import 'package:flutter/material.dart';
import 'package:flutter_winner_office/theme/color.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String textText = "pageTest";

  void _tesButton(String text) {
    print(1234);
    setState(() {
      textText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(textText),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            width: 40,
            height: 40,
            color: mcl2,
            margin: EdgeInsets.only(top: 60.0),
            child: Button(
              addFunction: _tesButton,
            ),
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key, required this.addFunction}) : super(key: key);

  final Function addFunction;

  final String abc = "11111";

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.only(right: 1.0),
      onPressed: () => addFunction(abc),
      child: Icon(Icons.add),
    );
  }
}


// GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['profile', 'email']);

//  GoogleSignInAccount? _googleUser;

//   @override
//   void initState() {
//     super.initState();
//     _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
//       setState(() {
//         _googleUser = account;
//       });
//     });
//     _googleSignIn.signInSilently();
//   }


// Widget _buildBody() {
//     if (_googleUser != null) {
//       return Column(
//         children: <Widget>[
//           ListTile(
//             leading: GoogleUserCircleAvatar(identity: _googleUser!),
//             title: Text(_googleUser!.displayName!),
//             subtitle: Text(_googleUser!.email),
//           ),
//           MaterialButton(
//             shape: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(30.0),
//                 borderSide: BorderSide(color: mcl2, width: 2)),
//             onPressed: _handleSignOut,
//             child: Text(
//               'SIGN OUT',
//               style: TextStyle(
//                 color: mcl2,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ],
//       );
//     } else {
//       return Column(
//         children: <Widget>[
//           Text('You are not signed in..'),
//           Container(
//             margin: EdgeInsets.only(top: 10.0),
//             child: MaterialButton(
//               shape: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(30.0),
//                   borderSide: BorderSide(color: mcl2, width: 2)),
//               onPressed: _handleSignIn,
//               child: Text(
//                 'SIGN IN',
//                 style: TextStyle(
//                   color: mcl2,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       );
//     }
//   }

//   Future<void> _handleSignIn() async {
//     try {
//       await _googleSignIn.signIn();
//     } catch (error) {
//       print(error);
//     }
//   }

//   Future<void> _handleSignOut() async {
//     _googleSignIn.disconnect();
//   }
