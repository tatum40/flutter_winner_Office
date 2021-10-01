import 'package:flutter/material.dart';
import 'package:flutter_winner_office/content/main/home.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['profile', 'email']);

class SignInGoogle extends StatefulWidget {
  const SignInGoogle({Key? key}) : super(key: key);

  @override
  _SignInGoogleState createState() => _SignInGoogleState();
}

class _SignInGoogleState extends State<SignInGoogle> {
  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount? account) {});
    _googleSignIn.signInSilently();
  }

  @override
  Widget build(BuildContext context) => googleBtn();

  Widget googleBtn() {
    return Container(
      width: 60,
      height: 60,
      child: MaterialButton(
        padding: EdgeInsets.all(0.0),
        onPressed: _handleSignIn,
        child: Image.asset('assets/images/google.png', fit: BoxFit.fitHeight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
      ),
    );
  }

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn().then(
            (value) => {
              if (value != null)
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(googleAccountData: value),
                    ),
                  ),
                }
            },
          );
    } catch (error) {
      print(error);
    }
  }

  // Future<void> _handleSignOut() async {
  //   await _googleSignIn.disconnect();
  // }
}
