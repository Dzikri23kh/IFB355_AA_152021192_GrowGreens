import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';


class KonversiSuhu extends StatefulWidget {
  @override
  _KonversiSuhuState createState() => _KonversiSuhuState();
}

class _KonversiSuhuState extends State<KonversiSuhu> {
  double celsius = 0;
  double fahrenheit = 0;
  double kelvin = 0;
  double reamur = 0;

  TextEditingController celsiusController = TextEditingController();

  void convertTemperature() {
    setState(() {
      double inputValue = double.parse(celsiusController.text);

      celsius = inputValue;
      fahrenheit = (celsius * 9 / 5) + 32;
      kelvin = celsius + 273.15;
      reamur = celsius * 4 / 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
      body: Center(
        child: Column(

          children: <Widget>[
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

            SizedBox(height: 20,),
            Text("Konversi Suhu",
              style: TextStyle(
                fontFamily: 'poppinssemibold',
                fontSize: 30,
                color: Colors.black
              ),
            ),

            SizedBox(height: 30,),
            Container(
              width: 300, // Atur lebar sesuai kebutuhan
              height: 50, // Atur tinggi sesuai kebutuhan
              child: TextField(
                keyboardType: TextInputType.number,
                controller: celsiusController,
                decoration: InputDecoration( 
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none, // Menghapus border ketika input difokuskan
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none, // Menghapus border ketika input tidak difokuskan
                  ),
                  filled: true,
                  fillColor: Color(0xFFE1E1E1),
                  hintText: "Masukkan celcius",
                  hintStyle: TextStyle(color: Color(0xFF9A9A9A)),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                style: TextStyle(fontSize: 14),
              ),
            ),

            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: convertTemperature,
              child: Text('Convert'),
            ),

            SizedBox(height: 20,),
            Container(
              width: 300, // Atur lebar sesuai kebutuhan
              height: 50, // Atur tinggi sesuai kebutuhan
              child: TextField(
                controller: TextEditingController(text: fahrenheit.toStringAsFixed(2)),
                decoration: InputDecoration( 
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none, // Menghapus border ketika input difokuskan
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none, // Menghapus border ketika input tidak difokuskan
                  ),
                  filled: true,
                  labelText: 'Fahrenheit',
                  fillColor: Color(0xFFE1E1E1),
                  hintStyle: TextStyle(color: Colors.black),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                style: TextStyle(fontSize: 15),
              ),
            ),

            SizedBox(height: 20,),
            Container(
              width: 300, // Atur lebar sesuai kebutuhan
              height: 50, // Atur tinggi sesuai kebutuhan
              child: TextField(
                controller: TextEditingController(text: kelvin.toStringAsFixed(2)),
                decoration: InputDecoration( 
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none, // Menghapus border ketika input difokuskan
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none, // Menghapus border ketika input tidak difokuskan
                  ),
                  filled: true,
                  labelText: 'Kelvin',
                  fillColor: Color(0xFFE1E1E1),
                  hintStyle: TextStyle(color: Colors.black),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                style: TextStyle(fontSize: 15),
              ),
            ),

            SizedBox(height: 20,),
            Container(
              width: 300, // Atur lebar sesuai kebutuhan
              height: 50, // Atur tinggi sesuai kebutuhan
              child: TextField(
                controller: TextEditingController(text: reamur.toStringAsFixed(2)),
                decoration: InputDecoration( 
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none, // Menghapus border ketika input difokuskan
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none, // Menghapus border ketika input tidak difokuskan
                  ),
                  filled: true,
                  labelText: 'Reamur',
                  fillColor: Color(0xFFE1E1E1),
                  hintStyle: TextStyle(color: Colors.black),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
