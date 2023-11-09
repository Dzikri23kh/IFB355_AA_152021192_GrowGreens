import 'package:flutter/material.dart';

import 'package:feather_icons/feather_icons.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  // This widget is the root of your application.
  @override   
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xff1D1D1D),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: IconButton(onPressed: () {
                              }, icon: Icon(
                  FeatherIcons.chevronLeft, 
                  color: Colors.white,
                  size: 27,)),
                )
              ],
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:30.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/Profile.png',
                    width: 93, // Lebar gambar yang diinginkan
                    height: 100, // Tinggi gambar yang diinginkan
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Moch Dzikri Khoerudin",
                        style: TextStyle(
                          fontFamily: "poppinssemibold",
                          fontSize: 16,
                          color: Color(0xffB6B6B6)
                        ),),
                        Text("App Developer",
                        style: TextStyle(
                          fontFamily: "poppinsregular",
                          fontSize: 15,
                          color: Color(0xff888888)
                        ),),
                        Padding(
                          padding: const EdgeInsets.only(top:5.0),
                          child: Row(
                            children: [
                              Icon(FeatherIcons.mapPin, color: Color(0xff585858), size: 13,),
                              Text(" Bandung, Jawa barat",
                              style: TextStyle(
                                fontFamily: "poppinsregular",
                                fontSize: 12,
                                color: Color(0xff585858)
                              ),),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30.0, vertical: 20),
              child: Text(
              "I am currently pursuing my undergraduate degree at ITENAS and I am currently in my fifth semester.\n"
              "I am also a dedicated enthusiast of the Flutter framework, and I have been actively exploring and developing with it, driven by my passion for creating innovative mobile applications.",
              style: TextStyle(
                fontFamily: "poppinsregular",
                fontSize: 15,
                color: Color(0xff888888),
              ),
              textAlign: TextAlign.justify,
                      ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:30.0),
              child: Text("Skills",
              style: TextStyle(
                color: Color(0xffB6B6B6),
                fontFamily: "poppinssemibold",
                fontSize: 15
              ),),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical:20.0, horizontal: 30),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff585858),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/images/HTML.png',
                    width: 85,
                    height: 85,),
                  ),
                  SizedBox(width: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff585858),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/images/CSS.png',
                    width: 85,
                    height: 85,),
                  ),
                  SizedBox(width: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff585858),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset('assets/images/Flutter.png',
                    width: 85,
                    height: 85,),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left:30.0),
              child: Text("Personal Informations",
                style: TextStyle(
                  color: Color(0xffB6B6B6),
                  fontFamily: "poppinssemibold",
                  fontSize: 15
                ),),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left:15.0, top: 12),
              child: ListTile(leading: Container(
                height: 50,
                width: 50,
                child: Icon(FeatherIcons.mail,color: Colors.white,), 
                decoration: BoxDecoration(
                  color: Color(0xFF585858),
                  borderRadius: BorderRadius.circular(10),),),
                title: Text("E-mail",
                style: TextStyle(
                  fontFamily: "poppinsregular",
                  fontSize: 15,
                  color: Color(0xff585858),
                ),), 
                subtitle: Text('moch.dzikri@mhs.itenas.ac.id',
                style: TextStyle(
                  fontFamily: "poppinssemibold",
                  fontSize: 15,
                  color: Color(0xff888888),
                ),),),
            ),

            Padding(
              padding: const EdgeInsets.only(left:15.0),
              child: ListTile(leading: Container(
                height: 50,
                width: 50,
                child: Icon(FeatherIcons.phone,color: Colors.white,), 
                decoration: BoxDecoration(
                  color: Color(0xFF585858),
                  borderRadius: BorderRadius.circular(10),),),
                title: Text("Phone Number",
                style: TextStyle(
                  fontFamily: "poppinsregular",
                  fontSize: 15,
                  color: Color(0xff585858),
                ),), 
                subtitle: Text('089637074584',
                style: TextStyle(
                  fontFamily: "poppinssemibold",
                  fontSize: 15,
                  color: Color(0xff888888),
                ),),),
            ),


            

            
          ],
        ),
      ),
    );
  }
}
