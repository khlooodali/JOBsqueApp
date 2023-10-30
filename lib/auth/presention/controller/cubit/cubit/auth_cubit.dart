import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:findjop/auth/presention/controller/login_model.dart';

import 'package:findjop/auth/presention/screens/createaccount/typejopview.dart';
import 'package:findjop/auth/presention/screens/forgetpassword/sucesschangepassword.dart';
import 'package:findjop/auth/presention/screens/login/view.dart';
import 'package:findjop/auth/presention/screens/profileandsettings.dart/towstepotp.dart';
import 'package:findjop/core/cashhelper.dart';
import 'package:findjop/core/theme/appcolors.dart';
import 'package:findjop/mainpage/view.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/constant/strings.dart';
import '../../../../../core/customwidgets/helpermethod/navigatetonextpage.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void loginWithGoogle() async {
    emit(GoogleAuthLoadingState());
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final UserCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      emit(GoogleAuthSuccessState(UserCredential.user!));
      print(UserCredential.user!);
    } catch (e) {
      emit(GoogleAuthFailedState(e.toString()));
    }
  }

  void loginWithFacebook() async {
    emit(FacebookAuthLoadingState());
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();

      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

      final UserCredential = await FirebaseAuth.instance
          .signInWithCredential(facebookAuthCredential);
      emit(GoogleAuthSuccessState(UserCredential.user!));
      print(UserCredential.user!);
    } catch (e) {
      emit(FacebookAuthFailedState(e.toString()));
    }
  }

  Future registerUser(
      String name, String email, String password, BuildContext context) async {
    final Dio dio = Dio();
    emit(LoadingState());
    try {
      var response = await dio.post(
        '$baseUrl$registerEndPoint',
        data: {
          "name": name,
          "email": email,
          "password": password,
        },
      );

      emit(SuccessRequsetState());
      nextTo(context, SelectTypeOfJopView(), iskeep: true);

      return response.data;
    } on DioError catch (e) {
      emit(FailState());
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: const Duration(seconds: 2),
          backgroundColor: AppColor.dangerColor500,
          content: Text('${e.response!.data["massege"]["email"][0]}')));
      print(e.response!.data["massege"]["email"][0]);
      return e.response!.data;
    }
  }

  void login(String email, String password, BuildContext context) async {
    final Dio dio = Dio();
    emit(LoginLoadingState());
    try {
      final response = await dio.post(
        '$baseUrl$loginEndPoint',
        data: {
          "email": email,
          "password": password,
        },
      );

      if (response.statusCode == 200) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        // LoginModel? client = LoginModel.fromJson(jsonDecode(
        //     CashHelper.preferences.get(CashHelper.userModelKey) as String));
        final model = LoginModel.fromJson(response.data);

        CashHelper.saveLoginData(model);
        print(model.user.name);
        usertoken = model.token;
        userName = model.user.name;
        userEmail = model.user.email;
        print('cashtoken:${CashHelper.getToken()}');

        emit(LoginSuccess());
        prefs.setString(userLoged, 'true');

        nextTo(context, const MainPageView(), isreplace: true);

        print(response.data);
      }

      //return response.data;
    } on DioError catch (e) {
      emit(LoginFailState());
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          duration: Duration(seconds: 2),
          backgroundColor: AppColor.dangerColor500,
          content: Text('Wrong Password Or invalied Email')));
      print(e.response!.data["massage"]);
      return e.response!.data;
    }
  }

  void updateNameAndPassword(
      String name, String password, BuildContext context) async {
    final Dio dio = Dio();
    emit(ChangeLoadingState());
    try {
      var response = await dio.post(
        'https://project2.amit-learning.com/api/auth/user/update',
        options: Options(headers: {
          "Authorization": "Bearer $usertoken",
          "Accept": "application/json"
        }),
        data: {
          "name": name,
          "password": password,
        },
      );

      emit(ChangedSuccessfullyState());
      nextTo(context, const PasswordChangedSuccesfully(), isreplace: true);

      return response.data;
    } on DioError catch (e) {
      emit(FailChangeState());
      print(e.message);
      print(e.response!.data);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          duration: Duration(seconds: 2),
          backgroundColor: AppColor.dangerColor500,
          content: Text('Error!')));

      return e.response!.data;
    }
  }

  void logoutUser(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();

    nextTo(context, const LoginView());
  }

  void getOtp(String email, BuildContext context) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final Dio dio = Dio();
    emit(LoadingState());
    try {
      var response = await dio.post(
        'https://project2.amit-learning.com/api/auth/otp',
        options: Options(headers: {
          "Authorization": "Bearer $usertoken",
          "Accept": "application/json"
        }),
        data: {
          "email": email,
        },
      );

      emit(SuccessRequsetState());
      print(response.data["data"]);
      pref.setString(otpCode, response.data["data"]);

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: const Duration(seconds: 10),
          backgroundColor: AppColor.successColor700,
          content: Text(
              'Save your Code  for Verfication is:\n ${response.data["data"]}')));
      nextTo(context, const TowStepVerificationOtpView(), isreplace: true);

      return response.data;
    } on DioError catch (e) {
      emit(FailState());
      print(e.message);
      print(e.response!.data);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          duration: Duration(seconds: 2),
          backgroundColor: AppColor.dangerColor500,
          content: Text('Error!')));

      return e.response!.data;
    }
  }
}
