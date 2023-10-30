import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:findjop/core/constant/strings.dart';
import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';

part 'experince_cubit_state.dart';

class ExperinceCubitCubit extends Cubit<ExperinceCubitStates> {
  ExperinceCubitCubit() : super(ExperinceCubitStates());

  Future addExperince(
      int id,
      String position,
      String typeofwork,
      String compname,
      String location,
      String start,
      BuildContext context) async {
    final Dio dio = Dio();
    emit(LoadingState());
    try {
      var response = await dio.post(
        'https://project2.amit-learning.com/api/experince',
        data: {
          "user_id": id,
          "postion": position,
          "type_work": typeofwork,
          "comp_name": compname,
          "location": location,
          "start": start,
        },
      );

      emit(UploadedSuccessfully());

      return response.data;
    } on DioError catch (e) {
      emit(FaildUpload());
      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //     duration: const Duration(seconds: 2),
      //     backgroundColor: AppColor.dangerColor500,
      //     content: Text('${e.response!.data["massege"]["email"][0]}')));
      //print(e.response!.data["massege"]["email"][0]);
      print(e.message);
      return e.response!.data;
    }
  }
}
