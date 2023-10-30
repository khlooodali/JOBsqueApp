import 'package:country_code_picker/country_code_picker.dart';
import 'package:findjop/auth/presention/controller/cubit/cubit/auth_cubit.dart';
import 'package:findjop/auth/presention/screens/createaccount/cubit/sign_up_cubit.dart';
import 'package:findjop/auth/presention/screens/createaccount/typejopview.dart';
import 'package:findjop/auth/presention/screens/login/view.dart';
import 'package:findjop/auth/presention/screens/profileandsettings.dart/cubit/cubit/profile_cubit.dart';
import 'package:findjop/auth/presention/screens/profileandsettings.dart/editprofile.dart';
import 'package:findjop/core/appcontainer.dart';
import 'package:findjop/core/cashhelper.dart';
import 'package:findjop/core/theme/apptheme.dart';
import 'package:findjop/experiance/controller/cubit/experince_cubit_cubit.dart';
import 'package:findjop/experiance/view.dart';
import 'package:findjop/jop/presention/Screens/displayalljops/view.dart';
import 'package:findjop/jop/presention/controller/cubit/jop_cubit.dart';
import 'package:findjop/jop/presention/model/jopmodel.dart';
import 'package:findjop/mainpage/pages/homepage.dart';
import 'package:findjop/mainpage/view.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CashHelper.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => AuthCubit()),
            BlocProvider(create: (_) => JopCubit()),
            BlocProvider(create: (_) => ProfileCubit()),
            BlocProvider(create: (_) => ExperinceCubitCubit()),
          ],
          child: MaterialApp(
            supportedLocales: const [
              Locale("af"),
              Locale("am"),
              Locale("ar"),
              Locale("az"),
              Locale("be"),
              Locale("bg"),
              Locale("bn"),
              Locale("bs"),
              Locale("ca"),
              Locale("cs"),
              Locale("da"),
              Locale("de"),
              Locale("el"),
              Locale("en"),
              Locale("es"),
              Locale("et"),
              Locale("fa"),
              Locale("fi"),
              Locale("fr"),
              Locale("gl"),
              Locale("ha"),
              Locale("he"),
              Locale("hi"),
              Locale("hr"),
              Locale("hu"),
              Locale("hy"),
              Locale("id"),
              Locale("is"),
              Locale("it"),
              Locale("ja"),
              Locale("ka"),
              Locale("kk"),
              Locale("km"),
              Locale("ko"),
              Locale("ku"),
              Locale("ky"),
              Locale("lt"),
              Locale("lv"),
              Locale("mk"),
              Locale("ml"),
              Locale("mn"),
              Locale("ms"),
              Locale("nb"),
              Locale("nl"),
              Locale("nn"),
              Locale("no"),
              Locale("pl"),
              Locale("ps"),
              Locale("pt"),
              Locale("ro"),
              Locale("ru"),
              Locale("sd"),
              Locale("sk"),
              Locale("sl"),
              Locale("so"),
              Locale("sq"),
              Locale("sr"),
              Locale("sv"),
              Locale("ta"),
              Locale("tg"),
              Locale("th"),
              Locale("tk"),
              Locale("tr"),
              Locale("tt"),
              Locale("uk"),
              Locale("ug"),
              Locale("ur"),
              Locale("uz"),
              Locale("vi"),
              Locale("zh")
            ],
            localizationsDelegates: const [
              CountryLocalizations.delegate,
              //GlobalMaterialLocalizations.delegate,
              //GlobalWidgetsLocalizations.delegate,
            ],
            debugShowCheckedModeBanner: false,
            title: 'JOBSQUE',
            theme: getLightTheme(),
            home: child,
          ),
        );
      },
      child: const LoginView(),
    );
  }
}
