import 'package:flutter/material.dart';
import 'package:growgreen/screens/login_screen.dart';
import 'package:growgreen/screens/register_screen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  // This widget is the root of your application.
  @override   
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset('assets/images/Logo.png'),
          ),
          Text(
            "Let's plant with us",
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'poppinssemibold',
              color: Colors.black,
            ),
          ),
          Text(
            "make the world green again ",
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'poppinsregular',
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 38),
            child: SizedBox(
              width: 314,
              height: 322,
              child: Image.asset('assets/images/Splash screen.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 52),
          child: SizedBox(
            height: 35,
            width: 253,
            child: Material(
              color: Color(0xFF61BC84),
              borderRadius: BorderRadius.circular(5),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
                },
                child: Padding(
                        padding: 
                            EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                        child: Center(
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'poppinsregular',
                          ),
                          ),
                        ),
                      ),
                    )
                  ),
              ),
          ),
          Center(
            child: SizedBox(
              width: double.infinity,
              height: 33,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        )
                      );
                    },
                    child: Text(
                      "Create an account",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'poppinsregular',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              ),
            ),
        ]),
      ),
    );
  }
}