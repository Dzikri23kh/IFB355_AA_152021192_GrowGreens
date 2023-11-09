import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class CatatanSederhana extends StatefulWidget {
  @override
  _CatatanSederhanaState createState() => _CatatanSederhanaState();
}

class _CatatanSederhanaState extends State<CatatanSederhana> {
  List<String> catatanList = [];
  TextEditingController catatanController = TextEditingController();

  void tambahCatatan() {
    setState(() {
      String catatanBaru = catatanController.text;
      if (catatanBaru.isNotEmpty) {
        catatanList.add(catatanBaru);
        catatanController.clear();
      }
    });
  }

  void hapusCatatan(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Konfirmasi Hapus'),
          content: Text('Apakah Anda yakin ingin menghapus catatan ini?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  catatanList.removeAt(index);
                });
                Navigator.of(context).pop();
              },
              child: Text('Hapus'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Text("Daily Diary", style: TextStyle(
            fontFamily: "poppinssemibold",
            fontSize: 25,
            color: Colors.black
          ),),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: catatanController,
              decoration: InputDecoration(
                hintText: 'Tambah Catatan',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: tambahCatatan,
            child: Text('Tambah'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: catatanList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(catatanList[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => hapusCatatan(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
