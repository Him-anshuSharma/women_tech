import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/auth.png"),
          GestureDetector(
            child: Container(
              width: 250,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 0.5)),
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image.asset("assets/google.png"),
                const Text("Continue with Google", style: TextStyle(color: Colors.black),)
              ],)
            ),
            onTap: (){
              Navigator.pushNamed(context,'/');
            },
          ),

          GestureDetector(
            child: Container(
              width: 250,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 0.5)),
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const[
                FaIcon(
                    FontAwesomeIcons.apple,
                    color: Colors.black,
                    size: 30,
                  ),
                Text("Continue with Apple", style: TextStyle(color: Colors.black),)
              ],)
            ),

            onTap: (){
              Navigator.pushNamed(context,'/');
            },
          ),

          GestureDetector(
            child: Container(
              width: 250,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 0.5)),
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Text("Continue with ", style: TextStyle(color: Colors.black),),
                Image.asset("assets/yahoo.png"),
              ],)
            ),

            onTap: (){
              Navigator.pushNamed(context,'/');
            },
          ),
          Container(
            margin: const EdgeInsets.all(30),
            child: const Text('By Signing In, you agree to our Terms, Privacy Policy and Cookie Use', 
            style: TextStyle(color: Colors.black, ),
            textAlign: TextAlign.center
            ,),
          ),
          
        ]),
      )),
    );
  }
}
