import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  // Future registerUser(Map<String, dynamic>? userData) async {
  //   final Dio dio = Dio();
  //   emit(LoadingState());
  //   try {
  //     var response = await dio.post(
  //       'https://project2.amit-learning.com/api/auth/register',
  //       data: userData,
  //     );

  //     emit(SuccessRequsetState());
  //     if (response.data["status"] == true) {
  //       print('success');
  //     } else {
  //       print('find error');
  //     }
  //     print(response.data);
  //     return response.data;
  //   } on DioError catch (e) {
  //     //returns the error object if there is
  //     print('fail to connect');
  //     return e.response!.data;
  //   }
  // }
}
