import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth_auth = FirebaseAuth.instance;

                    //SignUp
  Future<String?> signUp(String email, String password) async {
    try {
      UserCredential user = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await user.user!.sendEmailVerification();
      return 'signup successful! check your email';
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
              //Login
  Future<String?> login(String email, String password) async {
    try {
      UserCredential user = await _auth.signinWithEmailaAndPassword(
        email: email,
        password: password
      )
    }
  }            
}
