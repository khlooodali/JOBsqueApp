import 'package:findjop/core/cashhelper.dart';

const String logopath = 'assets/icons/Logotext.svg';
const String baseUrl = 'https://project2.amit-learning.com/api/';
const String registerEndPoint = 'auth/register';
const String loginEndPoint = 'auth/login';
String usertoken = CashHelper.getToken();
String userName = CashHelper.getName();
String userEmail = CashHelper.getEmail();
String userLoged = 'false';
int userId = 0;
String otpCode = '';
