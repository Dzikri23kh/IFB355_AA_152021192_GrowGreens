import 'package:flutter/material.dart';
import 'package:growgreen/screens/login_screen.dart';
import 'package:growgreen/screens/register_screen.dart';
import 'package:growgreen/models/plant_model.dart';
import 'package:feather_icons/feather_icons.dart';

var Menu = ["All", "Indoor", "Outdoor"];
var SelectedMenu = 0;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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

          Row(
            children:  [
              Padding(
                padding: const EdgeInsets.only(left: 21, top: 7, right: 11),
                child: Container(
                  width: 300, // Mengatur lebar sesuai kebutuhan
                  height: 40, // Mengatur tinggi sesuai kebutuhan
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF838383)),
                        borderRadius: BorderRadius.circular(15.0), 
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF838383)),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      filled: true,
                      fillColor: Color(0xFFEFEEEE),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Color(0xFF838383)),
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      prefixIcon: Icon(FeatherIcons.search)
                    ),
                    style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15),
                  ),
                ),
              ),
              IconButton(onPressed: () {
              }, icon: Icon(
                FeatherIcons.bell, 
                color: const Color(0xFF838383),
                size: 27,))
            ]
          ),

          SizedBox(height: 20),
          SizedBox(
            height: 31,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 19,),
                decoration: BoxDecoration(color: SelectedMenu == index 
                ? const Color(0xFF61BC84) 
                : Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: SelectedMenu == index 
                ? null 
                : Border.all(color: Color(0xFF838383))),
                child: Center(child: Text(Menu[index], 
                  style: TextStyle(
                    fontFamily: 'poppinregular',
                    fontSize: 15,
                    color: SelectedMenu == index 
                    ? Colors.white
                    : const Color(0xFF838383)
                  ),)),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 26), 
              itemCount: Menu.length
              ),
          ),
          
          SizedBox(height: 20,),
          

          Row(
            children: [
              SizedBox(
                height:50,
                width: 20,
              ),
              Text(
                "Featured Plant",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'poppinsmedium',
                  color: Colors.black,
                ),
                textAlign: TextAlign.left, // Mengatur teks ke kiri
              ),
            ],
          ),

 
          ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => _plants(requiredplants[index]), 
            separatorBuilder: (context, index) => SizedBox(height: 17,), 
            itemCount: requiredplants.length)        
        ]),  
      ),
    );
  }

  Container _plants(PlantModel plantModel) {
    return Container(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20,),
            decoration: BoxDecoration(color: Color(0xFFDFF2E6), 
              borderRadius: BorderRadius.circular(5),),
              child: Row(children: [
                Image.asset('assets/images/${plantModel.image}', height: 90, width: 85,),
                SizedBox(width: 20,),
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        plantModel.name,
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'poppinsregular',
                            color: const Color(0xFF61BC84)),
                      ),
                    const SizedBox(height: 5,),
                    RichText(
                    text: TextSpan(
                        text: "Rp. ${plantModel.harga}",
                        style: TextStyle(
                            fontFamily: 'poppinsmedium',fontSize: 14, color: Colors.black))),
                    const SizedBox(height: 5,),
                    Text("${plantModel.description}",
                      style: TextStyle(
                        fontFamily: 'poppinsregular',
                        fontSize: 10,
                        color: const Color(0xFF838383),
                      )),
                    Padding(
                      padding: const EdgeInsets.only(left: 160.0, bottom: 10),
                      child: IconButton(
                        onPressed: () {
                          // Fungsi yang akan dijalankan saat tombol ditekan
                        },
                        icon: Container(
                          height: 40,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color(0xFF61BC84), // Ganti warna latar belakang sesuai keinginan Anda
                            borderRadius: BorderRadius.circular(50), // Menambahkan border radius sesuai kebutuhan
                          ),
                          child: Icon(
                            FeatherIcons.plus, 
                            color: Colors.white, // Ganti warna ikon sesuai keinginan Anda
                            size: 20,
                            
                          ),
                        ),
                      ),
                    ),

    
                    ],
                  ),
                )
              ],),
        );

        
  }
}