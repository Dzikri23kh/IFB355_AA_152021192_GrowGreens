import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class KonversiMataUang extends StatefulWidget {
  @override
  _KonversiMataUangState createState() => _KonversiMataUangState();
}

class _KonversiMataUangState extends State<KonversiMataUang> {
  double amount = 0.0;
  String fromCurrency = 'USD';
  String toCurrency = 'USD'; // Mata uang tujuan default
  double convertedAmount = 0.0;

  // Daftar faktor konversi mata uang
  final Map<String, Map<String, double>>? currencyConversionRates = {
    'USD': {
      'USD': 1.0,
      'EUR': 0.85,
      'GBP': 0.73,
      'JPY': 110.33,
      'IDR': 14000.0
    },
    'EUR': {
      'USD': 1.18,
      'EUR': 1.0,
      'GBP': 0.87,
      'JPY': 130.62,
      'IDR': 16548.0
    },
    'GBP': {
      'USD': 1.37,
      'EUR': 1.15,
      'GBP': 1.0,
      'JPY': 150.37,
      'IDR': 19059.0
    },
    'JPY': {
      'USD': 0.0091,
      'EUR': 0.0077,
      'GBP': 0.0067,
      'JPY': 1.0,
      'IDR': 127.07
    },
    'IDR': {
      'USD': 0.0000714,
      'EUR': 0.0000604,
      'GBP': 0.0000524,
      'JPY': 0.0079,
      'IDR': 1.0
    },
  };

  // Fungsi untuk mengonversi mata uang
  void convertCurrency() {
    final Map<String, double>? fromCurrencyMap =
        currencyConversionRates?[fromCurrency];
    if (fromCurrencyMap != null) {
      final double? conversionRate = fromCurrencyMap[toCurrency];
      if (conversionRate != null) {
        convertedAmount = amount * conversionRate;
        setState(() {});
      } else {
        // Handle error jika mata uang tujuan tidak ditemukan
        // Misalnya, tampilkan pesan kesalahan atau nilai default
      }
    } else {
      // Handle error jika mata uang asal tidak ditemukan
      // Misalnya, tampilkan pesan kesalahan atau nilai default
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
            SizedBox(height: 30,),
            Text("Konversi Mata Uang",
            style: TextStyle(
              fontFamily: "poppinssemibold",
              fontSize: 25,
              color: Colors.black
            ),),
            SizedBox(height: 150,),
            Text(
              'Enter amount:',
              style: TextStyle(fontSize: 18.0, fontFamily: "poppinsmedium"),
            ),
            SizedBox(height: 10,),
            Container(
              width: 300, // Atur lebar sesuai kebutuhan
              height: 50, // Atur tinggi sesuai kebutuhan
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  amount = double.tryParse(value) ?? 0.0;
                },
                decoration: InputDecoration( 
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none, // Menghapus border ketika input difokuskan
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none, // Menghapus border ketika input tidak difokuskan
                  ),
                  filled: true,
                  fillColor: Color(0xFFE1E1E1),
                  hintText: "Masukkan jumlah mata uang",
                  hintStyle: TextStyle(color: Color(0xFF9A9A9A)),
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
                style: TextStyle(fontSize: 14),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:120.0),
              child: Row(
                children: [
                  Text(
                    'Convert from :',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(width: 10,),
                  DropdownButton<String>(
                    value: fromCurrency,
                    onChanged: (value) {
                      setState(() {
                        fromCurrency = value!;
                      });
                    },
                    items: currencyConversionRates?.keys.map((String currency) {
                          return DropdownMenuItem<String>(
                            value: currency,
                            child: Text(currency),
                          );
                        }).toList() ??
                        [],
                  ),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left:130.0),
              child: Row(
                children: [
                  Text(
                    'Convert to :',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(width: 10,),
                  DropdownButton<String>(
                    value: toCurrency,
                    onChanged: (value) {
                      setState(() {
                        toCurrency = value!;
                      });
                    },
                    items: currencyConversionRates?.keys.map((String currency) {
                          return DropdownMenuItem<String>(
                            value: currency,
                            child: Text(currency),
                          );
                        }).toList() ??
                        [],
                  ),
                ],
              ),
            ),
            
            ElevatedButton(
              onPressed: () {
                convertCurrency();
              },
              child: Text('Convert'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Converted amount: $convertedAmount $toCurrency',
              style: TextStyle(fontSize: 20.0, fontFamily: "poppinssemibold"),
            ),
          ],
        ),
      ),
      
    );
  }

}