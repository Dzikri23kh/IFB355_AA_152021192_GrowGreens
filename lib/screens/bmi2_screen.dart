import 'package:flutter/material.dart';

import 'package:feather_icons/feather_icons.dart';

class BMI2Screen extends StatefulWidget {
  const BMI2Screen({Key? key}) : super(key: key);

  @override
  _BMI2ScreenState createState() => _BMI2ScreenState();
}

class _BMI2ScreenState extends State<BMI2Screen> {
  String selectedGender = 'Male';
  final List<String> genders = ['Male', 'Female'];

  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  double bmiResult = 0.0;
  String bmiCategory = "";
  Color backgroundColor = Color(0xfff7f7f7);
  Color textfieldColor = Color(0xfff7f7f7);
  Color buttonColor = Color(0xFF8d8cd4);
  Color textbuttonColor = Colors.white;

  void calculateBMI() {
    double weight = double.tryParse(weightController.text) ?? 0;
    double height = double.tryParse(heightController.text) ?? 0;
    int age = int.tryParse(ageController.text) ?? 0;

    // Perhitungan BMI
    if (weight > 0 && height > 0) {
    double heightInMeters = height / 100;
    double bmi = weight / (heightInMeters * heightInMeters);

      setState(() {
        bmiResult = bmi;
        if (bmi < 18.5) {
          bmiCategory = "Underweight";
          backgroundColor = Color(0xFF87b1e2);
          textfieldColor = Color(0xFF87b1e2);
          buttonColor = Color(0xfff7f7f7);
          textbuttonColor = Colors.black;
        } else if (bmi < 24.9) {
          bmiCategory = "Normal";
          backgroundColor = Color(0xFFc1e898);
          textfieldColor = Color(0xFFc1e898);
          buttonColor = Color(0xfff7f7f7);
          textbuttonColor = Colors.black;
        } else if (bmi < 29.9) {
          bmiCategory = "Overweight";
          backgroundColor = Color(0xFFf9e485);
          textfieldColor = Color(0xFFf9e485);
          buttonColor = Color(0xfff7f7f7);
          textbuttonColor = Colors.black;
        } else {
          bmiCategory = "Obesity";
          backgroundColor = Color(0xFFf28a8a);
          textfieldColor = Color(0xFFf28a8a);
          buttonColor = Color(0xfff7f7f7);
          textbuttonColor = Colors.black;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      FeatherIcons.arrowLeft,
                      color: Colors.black,
                      size: 27,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, top: 30),
              child: Text(
                "Health App",
                style: TextStyle(
                  fontFamily: "poppinsmedium",
                  fontSize: 20,
                  color: Color(0xff838383),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                "CALCULATE YOUR BMI",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "poppinssemibold",
                  fontSize: 30,
                ),
              ),
            ),

            SizedBox(height: 200,),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        "Gender",
                        style: TextStyle(
                          fontFamily: "poppinsmedium",
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: DropdownButton<String>(
                        value: selectedGender,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedGender = newValue!;
                          });
                        },
                        items: genders
                            .map<DropdownMenuItem<String>>(
                              (String value) => DropdownMenuItem<String>(
                                value: value,
                                child: Text(value, 
                                style: TextStyle(
                                  color: Color(0xff838383),
                                  fontFamily: "poppinsmedium",
                                  fontSize: 16
                                ),),
                              ),
                            )
                            .toList(),
                            underline: Container(
                              height: 1,
                              color: Color(0xff838383),
                            ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 100,),
                Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 65),
                        child: Text(
                          "Age",
                          style: TextStyle(
                            fontFamily: "poppinsmedium",
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:10.0),
                        child: Container(
                          width: 100, 
                          height: 40, 
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff838383), width: 1), // Garis bawah saat input difokuskan
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xff838383), width: 1), // Garis bawah saat input tidak difokuskan
                              ),
                              filled: true,
                              fillColor: textfieldColor,
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            ),
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text(
                          "Height (cm)",
                          style: TextStyle(
                            fontFamily: "poppinsmedium",
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 30,bottom:10.0),
                          child: Container(
                            width: 100, 
                            height: 40, 
                            child: TextField(
                              controller: heightController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff838383), width: 1), // Garis bawah saat input difokuskan
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff838383), width: 1), // Garis bawah saat input tidak difokuskan
                                ),
                                filled: true,
                                fillColor: textfieldColor,
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              ),
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ),
                    ],
                  ),
                  SizedBox(width: 82,),
                  Column(
                      children: [
                        Text(
                            "Weight (kg)",
                            style: TextStyle(
                              fontFamily: "poppinsmedium",
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:10.0),
                          child: Container(
                            width: 100, 
                            height: 40, 
                            child: TextField(
                              controller: weightController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff838383), width: 1), // Garis bawah saat input difokuskan
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff838383), width: 1), // Garis bawah saat input tidak difokuskan
                                ),
                                filled: true,
                                fillColor: textfieldColor,
                                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              ),
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),

            Padding(
            padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: Material(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(5),
                    child: InkWell(
                      onTap: calculateBMI,
                      
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
                                  "CALCULATE",
                                  style: TextStyle(
                                      color: textbuttonColor,
                                      fontSize: 16,
                                      fontFamily: 'poppinsmedium',
                                ),
                                ),
                              ),
                            ),
                          )
                        ),
                    ),
              ),
            ),

            bmiResult > 0
              ? 
                Padding(
                  padding: const EdgeInsets.only(top:20.0,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                              "Your BMI: ${bmiResult.toStringAsFixed(2)}",
                              style: TextStyle(
                                fontFamily: "poppinsmedium",
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                        SizedBox(width: 5,),
                        Text(
                          bmiCategory,
                            style: TextStyle(
                              fontFamily: "poppinsmedium",
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ), 
                      ],
                  ),
                )
              : SizedBox(), // Tidak menampilkan jika hasil BMI adalah 0
            
          ],
        ),
      ),
    );
  }
}
