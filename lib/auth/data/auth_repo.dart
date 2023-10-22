// import 'package:findjop/auth/domain/baserepo_auth.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class AuthRepoImpelemntion extends AuthRepo {
//   @override
//   createAccountWithCompeleteInformation() {}

//   @override
//   loginWithEmailAndPassword() {}

//   @override
//   Future loginWithFacebook() async {
//     final LoginResult loginResult = await FacebookAuth.instance.login();

//     final OAuthCredential facebookAuthCredential =
//         FacebookAuthProvider.credential(loginResult.accessToken!.token);

//     return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
//   }

//   @override
//   Future loginWithGoogle() async {
//     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//     final GoogleSignInAuthentication? googleAuth =
//         await googleUser?.authentication;

//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth?.accessToken,
//       idToken: googleAuth?.idToken,
//     );

//     return await FirebaseAuth.instance.signInWithCredential(credential);
//   }
// }
