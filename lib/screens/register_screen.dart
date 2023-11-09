import 'package:flutter/material.dart';
import 'package:growgreen/screens/login_screen.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
 
          SizedBox(
            width: 327,
            height: 320,
            child: Image.asset('assets/images/Register.png'),
          ),
          
          Text(
            "Create account ",
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'poppinssemibold',
              color: Colors.black,
            ),
          ),

          SizedBox(height: 24),
          Container(
            width: 300, // Mengatur lebar sesuai kebutuhan
            height: 40, // Mengatur tinggi sesuai kebutuhan
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none, // Menghapus border ketika input difokuskan
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none, // Menghapus border ketika input tidak difokuskan
                ),
                filled: true,
                fillColor: Color(0xFFEFEEEE),
                hintText: "Email Address",
                hintStyle: TextStyle(color: Color(0xFFB2B2B2)),
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
              style: TextStyle(fontSize: 14),
            ),
          ),

          SizedBox(height: 15),
          Container(
            width: 300, // Mengatur lebar sesuai kebutuhan
            height: 40, // Mengatur tinggi sesuai kebutuhan
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none, // Menghapus border ketika input difokuskan
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none, // Menghapus border ketika input tidak difokuskan
                ),
                filled: true,
                fillColor: Color(0xFFEFEEEE),
                hintText: "Phone",
                hintStyle: TextStyle(color: Color(0xFFB2B2B2)),
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
              style: TextStyle(fontSize: 14),
            ),
          ),

          SizedBox(height: 15),
          Container(
            width: 300, // Atur lebar sesuai kebutuhan
            height: 40, // Atur tinggi sesuai kebutuhan
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none, // Menghapus border ketika input difokuskan
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none, // Menghapus border ketika input tidak difokuskan
                ),
                filled: true,
                fillColor: Color(0xFFEFEEEE),
                hintText: "Password",
                hintStyle: TextStyle(color: Color(0xFFB2B2B2)),
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
              style: TextStyle(fontSize: 14),
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
                // onTap: (){
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => HomeScreen(),
                //     ));
                // },
                child: Padding(
                        padding: 
                            EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                        child: Center(
                          child: Text(
                            "Sign Up",
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
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'poppinsregular',
                        ),
                      ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ));
                              },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'poppinsregular',
                        color: Color(0xFF61BC84),
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
