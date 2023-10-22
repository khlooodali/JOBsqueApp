import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:findjop/jop/presention/model/jopmodel.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import '../../../../core/constant/strings.dart';

part 'jop_state.dart';

class JopCubit extends Cubit<JopStates> {
  JopCubit() : super(JopStates()) {
    getAllJops();
  }

  late JopModel jopModel;
  //late JopModel jopNamedModel;

  void getAllJops() async {
    final Dio dio = Dio();

    try {
      emit(JopLoading());
      final response = await dio.get(
          'https://project2.amit-learning.com/api/jobs',
          options: Options(headers: {
            "Authorization": "Bearer $token",
            "Accept": "application/json"
          }));

      print(response.data);
      jopModel = JopModel.fromJson(response.data);

      emit(JopLoadedSuccessfully());
      return response.data;
    } on DioException catch (e) {
      emit(JopFaildLoading());
      print('faillllllled to load jops');
      print(e.response!.data);
    }
  }

  // void getjopwithName(String name) async {
  //   final Dio dio = Dio();

  //   try {
  //     emit(JopLoading());
  //     final response = await dio.get(
  //         'https://project2.amit-learning.com/api/jobs/search',
  //         options: Options(headers: {
  //           "Authorization": "Bearer $token",
  //           "Accept": "application/json"
  //         }));

  //     print(response.data);
  //     jopNamedModel = JopModel.fromJson(response.data);

  //     emit(JopLoadedSuccessfully());
  //     return response.data;
  //   } on DioException catch (e) {
  //     emit(JopFaildLoading());
  //     print('faillllllled to load jops');
  //     print(e.response!.data);
  //   }
  // }
}
