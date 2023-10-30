import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  ProfileCubit() : super(ProfileStates());

  Future uploadProfile(
    File cv,
    File image,
  ) async {
    final Dio dio = Dio();
    emit(LoadingProfile());
    try {
      Map<String, dynamic> data = {};
      data.addAll({
        'cv_file': await MultipartFile.fromFile(
          cv.path,
          filename: 'cv.pdf', // Provide the desired filename
        ),
        "image": MultipartFile.fromFileSync(
          image.path,
          filename: image.path.split("/").last,
        ),
      });
      var response = await dio.post(
          'https://project2.amit-learning.com/api/user/profile/portofolios',
          data: FormData.fromMap(data));

      emit(UploadedProfile());
      //nextTo(context, SelectTypeOfJopView(), iskeep: true);

      return response.data;
    } on DioError catch (e) {
      emit(FailetoUploadProfile());

      return e.response!.data;
    }
  }
}
