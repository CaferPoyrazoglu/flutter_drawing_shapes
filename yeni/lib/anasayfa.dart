import 'package:flutter/material.dart';
import 'package:yeni/canvas.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  final enOlcusu = TextEditingController();
  final boyOlcusu = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Anasayfa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Canvas ölçülerini giriniz.",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: enOlcusu,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'En ölçüsü (birim)',
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: boyOlcusu,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Boy ölçüsü (birim)',
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              FlatButton(
                color: Colors.brown,
                child: Text(
                  "Oluştur",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CanvasPage(
                            double.parse(enOlcusu.text),
                            double.parse(boyOlcusu.text))),
                  );
                },
                padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
                textColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
