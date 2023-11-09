import 'package:flutter/material.dart';
import 'package:growgreen/screens/bmi2_screen.dart';
import 'package:growgreen/screens/catatan_screen.dart';
import 'package:growgreen/screens/kalkulator_screen.dart';
import 'package:growgreen/screens/konversi_matauang.dart';
import 'package:growgreen/screens/konversi_panjang.dart';
import 'package:growgreen/screens/konversisuhu_screen.dart';
import 'package:feather_icons/feather_icons.dart';

class Dashboard2Screen extends StatefulWidget {
  @override
  _Dashboard2ScreenState createState() => _Dashboard2ScreenState();
}

class _Dashboard2ScreenState extends State<Dashboard2Screen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    DashboardContent(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff585858),
        selectedItemColor: Colors.white, // Warna ikon dan teks saat terpilih
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class DashboardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xff1D1D1D),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Text("Dashboard",
            style: TextStyle(
              fontFamily: "poppinssemibold",
              fontSize: 20,
              color: Colors.white,
            ),),
            
            Padding(
              padding: const EdgeInsets.only(left:30.0, top: 30),
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Color(0x80585858),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 15,
                          child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset('assets/images/kalkulator.png'),
                        ),),
                        Positioned(
                        top: 100,
                        left: 15,
                        child: SizedBox(
                          height: 30,
                          width: 100,
                          child: Material(
                            color: Color(0xff828282),
                            borderRadius: BorderRadius.circular(5),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => KalkulatorScreen(),
                                  ));
                              },
                              child: Center(
                                child: Text("Kalkulator",
                                style: TextStyle(
                                  fontFamily: "poppinsmedium",
                                  fontSize: 14,
                                  color: Colors.white
                                ),),
                              ),
                            ),
                          ),
                        ))
                      ],
                    )
                  ),

                  SizedBox(width: 70,),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Color(0x80585858),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 15,
                          child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset('assets/images/suhu.png'),
                        ),),
                        Positioned(
                        top: 100,
                        left: 10,
                        child: SizedBox(
                          height: 30,
                          width: 110,
                          child: Material(
                            color: Color(0xff828282),
                            borderRadius: BorderRadius.circular(5),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => KonversiSuhu(),
                                  ));
                              },
                              child: Center(
                                child: Text("Konversi Suhu",
                                style: TextStyle(
                                  fontFamily: "poppinsmedium",
                                  fontSize: 14,
                                  color: Colors.white
                                ),),
                              ),
                            ),
                          ),
                        ))
                      ],
                    )
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:30.0, top: 30),
              child: Row(
                children: [
                  Container(
                      height: 150,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Color(0x80585858),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 30,
                            top: 15,
                            child: SizedBox(
                            height: 70,
                            width: 70,
                            child: Image.asset('assets/images/bmi.png'),
                          ),),
                          Positioned(
                          top: 100,
                          left: 10,
                          child: SizedBox(
                            height: 30,
                            width: 110,
                            child: Material(
                              color: Color(0xff828282),
                              borderRadius: BorderRadius.circular(5),
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BMI2Screen(),
                                    ));
                                },
                                child: Center(
                                  child: Text("BMI Calculator",
                                  style: TextStyle(
                                    fontFamily: "poppinsmedium",
                                    fontSize: 14,
                                    color: Colors.white
                                  ),),
                                ),
                              ),
                            ),
                          ))
                        ],
                      ) 
                    ),

                  SizedBox(width: 70,),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Color(0x80585858),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 15,
                          child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset('assets/images/panjang.png'),
                        ),),
                        Positioned(
                        top: 100,
                        left: 0,
                        child: SizedBox(
                          height: 30,
                          width: 130,
                          child: Material(
                            color: Color(0xff828282),
                            borderRadius: BorderRadius.circular(5),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => KonversiPanjang(),
                                  ));
                              },
                              child: Center(
                                child: Text("Konversi Panjang",
                                style: TextStyle(
                                  fontFamily: "poppinsmedium",
                                  fontSize: 14,
                                  color: Colors.white
                                ),),
                              ),
                            ),
                          ),
                        ))
                      ],
                    )
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:30.0, left: 30),
              child: Row(
                children: [
                  Container(
                        height: 150,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Color(0x80585858),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 30,
                              top: 15,
                              child: SizedBox(
                              height: 70,
                              width: 70,
                              child: Image.asset('assets/images/matauang.png'),
                            ),),
                            Positioned(
                            top: 90,
                            left: 10,
                            child: SizedBox(
                              height: 50,
                              width: 110,
                              child: Material(
                                color: Color(0xff828282),
                                borderRadius: BorderRadius.circular(5),
                                child: InkWell(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => KonversiMataUang(),
                                      ));
                                  },
                                  child: Center(
                                    child: Text("Konversi Mata\n         Uang",
                                    style: TextStyle(
                                      fontFamily: "poppinsmedium",
                                      fontSize: 14,
                                      color: Colors.white
                                    ),),
                                  ),
                                ),
                              ),
                            ))
                          ],
                        ) 
                      ),

                      SizedBox(width: 70,),
                  Container(
                    height: 150,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Color(0x80585858),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 15,
                          child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset('assets/images/Dairy.png'),
                        ),),
                        Positioned(
                        top: 100,
                        left: 10,
                        child: SizedBox(
                          height: 30,
                          width: 110,
                          child: Material(
                            color: Color(0xff828282),
                            borderRadius: BorderRadius.circular(5),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CatatanSederhana(),
                                  ));
                              },
                              child: Center(
                                child: Text("Daily Dairy",
                                style: TextStyle(
                                  fontFamily: "poppinsmedium",
                                  fontSize: 14,
                                  color: Colors.white
                                ),),
                              ),
                            ),
                          ),
                        ))
                      ],
                    )
                  ),
                ],
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xff1D1D1D),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 50,),
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
