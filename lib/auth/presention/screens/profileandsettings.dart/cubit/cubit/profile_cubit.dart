import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:findjop/core/constant/strings.dart';
import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../../../../core/customwidgets/helpermethod/navigatetonextpage.dart';
import '../../portfilio.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit() : super(ProfileStates());

  Future uploadProfile(
    String cv,
    String image,
  ) async {
    final Dio dio = Dio();
    emit(LoadingProfile());
    try {
      Map<String, dynamic> data = {};
      data.addAll({
        'cv_file': await MultipartFile.fromFile(
          cv,
          filename: 'cv.pdf', // Provide the desired filename
        ),
        "image": MultipartFile.fromFileSync(
          image,
          filename: image.split("/").last,
        ),
      });
      var response = await dio.post(
          'https://project2.amit-learning.com/api/user/profile/portofolios',
          data: FormData.fromMap(data));

      emit(UploadedProfile());
      //nextTo(context, SelectTypeOfJopView(), iskeep: true);
      print('uploaded success');
      return response.data;
    } on DioError catch (e) {
      emit(FailetoUploadProfile());
      print('fail to upload');
      return e.response!.data;
    }
  }

  Future uploadData(
      String bio, String address, String mobile, BuildContext context) async {
    final Dio dio = Dio();
    emit(LoadingProfile());
    try {
      var response = await dio.put(
        'https://project2.amit-learning.com/api/user/profile/edit?bio=$bio&address=$address&mobile=$mobile',
        options: Options(headers: {
          "Authorization": "Bearer $usertoken",
          "Accept": "application/json"
        }),
      );

      emit(UploadedProfile());
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          duration: Duration(seconds: 4),
          backgroundColor: AppColor.successColor700,
          content: Text('Uploaded data Successfully')));
      print(response.data['data']['bio']);

      return response.data;
    } on DioError catch (e) {
      emit(FailetoUploadProfile());
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: const Duration(seconds: 4),
          backgroundColor: AppColor.dangerColor500,
          content: Text('${e.message}')));

      return e.response!.data;
    }
  }
}
