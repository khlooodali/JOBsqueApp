part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class GoogleAuthLoadingState extends AuthState {}

final class LoadingState extends AuthState {}

final class FailState extends AuthState {}

final class SuccessRequsetState extends AuthState {}

final class LoginLoadingState extends AuthState {}

final class LoginFailState extends AuthState {}

final class LoginSuccess extends AuthState {}

final class ChangeLoadingState extends AuthState {}

final class FailChangeState extends AuthState {}

final class ChangedSuccessfullyState extends AuthState {}

final class FacebookAuthLoadingState extends AuthState {}

final class GoogleAuthSuccessState extends AuthState {
  final User user;

  GoogleAuthSuccessState(this.user);
}

final class FacebookAuthSuccessState extends AuthState {
  final User user;

  FacebookAuthSuccessState(this.user);
}

final class GoogleAuthFailedState extends AuthState {
  final String error;

  GoogleAuthFailedState(this.error);
}

final class FacebookAuthFailedState extends AuthState {
  final String error;

  FacebookAuthFailedState(this.error);
}
