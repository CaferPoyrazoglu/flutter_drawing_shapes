import 'package:flutter/material.dart';

class CizgiPage extends StatefulWidget {
  @override
  _CizgiPageState createState() => _CizgiPageState();
}

class _CizgiPageState extends State<CizgiPage> {
  final xkalinlik = TextEditingController();
  final cizgi1x = TextEditingController();
  final cizgi1y = TextEditingController();
  final cizgi2x = TextEditingController();
  final cizgi2y = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Çizgi Oluştur"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Çizgi Özellikleri",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: xkalinlik,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Çizginin Kalınlığı',
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: cizgi1x,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '1. Noktanın X Koordinatı',
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: cizgi1y,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '1. Noktanın Y Koordinatı',
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: cizgi2x,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '2. Noktanın X Koordinatı',
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: cizgi2y,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '2. Noktanın Y Koordinatı',
                  ),
                ),
              ),
              FlatButton(
                color: Colors.brown,
                child: Text(
                  "Oluştur",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context,
                      '${xkalinlik.text} ${cizgi1x.text} ${cizgi1y.text} ${cizgi2x.text} ${cizgi2y.text}');
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
