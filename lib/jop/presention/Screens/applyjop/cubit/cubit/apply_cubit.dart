import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'apply_state.dart';

class ApplyCubit extends Cubit<ApplyStates> {
  ApplyCubit() : super(ApplyStates());

  Future addApply(
    String cv,
    String name,
    String email,
    String mobile,
    String workType,
    String otherFile,
  ) async {
    final Dio dio = Dio();
    emit(LoadingApplyed());
    try {
      Map<String, dynamic> data = {};
      data.addAll({
        'cv_file': await MultipartFile.fromFile(
          cv,
          filename: 'cv.pdf',
        ),
        'name': name,
        'email': email,
        'mobile': mobile,
        'work_type': workType,
        'other_file': await MultipartFile.fromFile(
          cv,
          filename: 'cv.pdf',
        ),
      });
      var response = await dio.post(
          'https://project2.amit-learning.com/api/apply',
          data: FormData.fromMap(data));

      emit(SuccessAplly());

      print('uploaded success');
      return response.data;
    } on DioError catch (e) {
      emit(FaileApply());
      print('fail to upload');
      return e.response!.data;
    }
  }
}
