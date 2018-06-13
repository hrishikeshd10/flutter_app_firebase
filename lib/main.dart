import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'welcome page.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: new ThemeData(
      primarySwatch: Colors.green
      ),
      home: new MyHomePage(),

      
    );
  }
}
class MyHomePage extends StatelessWidget {

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = new GoogleSignIn();

Future<FirebaseUser> _signIn() async{
  
  GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  GoogleSignInAuthentication gSA =await googleSignInAccount.authentication;


  FirebaseUser user = await _auth.signInWithGoogle(
    idToken: gSA.idToken,
    accessToken: gSA.accessToken
  );

  BuildContext context;

  print("Username:${user.displayName}");
  return user;
}


void _signOut(){
googleSignIn.signOut();
print("User SIGNED OUT");

}





  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text('Flutter Firebase')),
        body:new Padding(
          padding: const EdgeInsets.all(20.0),

         child: new Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             
             new RaisedButton(
               onPressed: ()=>_signIn().then((FirebaseUser user )=>  Navigator.push(
                 context,
                 new MaterialPageRoute(builder: (context) => new welcomePage()),
               )
               ),
               child: new Text('Sign In'),
               color:Colors.green,
               ),

               new Padding(
                 padding: const EdgeInsets.all(20.0),

               ),

               new RawMaterialButton(
                 onPressed: ()=>_signOut(),
                 child: new Text('Sign Out'),
                 splashColor: Colors.green, 
                 fillColor: Colors.deepOrange,
                 
               )


           ],
         ),

        ),
      
    );
  }
}