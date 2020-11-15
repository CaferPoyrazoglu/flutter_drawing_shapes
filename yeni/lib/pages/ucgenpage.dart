import 'package:flutter/material.dart';
import 'package:yeni/my_button.dart';

class UcgenPage extends StatefulWidget {
  @override
  _UcgenPageState createState() => _UcgenPageState();
}

class _UcgenPageState extends State<UcgenPage> {
  final nokta1x = TextEditingController();
  final nokta1y = TextEditingController();
  final nokta2x = TextEditingController();
  final nokta2y = TextEditingController();
  final nokta3x = TextEditingController();
  final nokta3y = TextEditingController();
  var _color1 = Colors.green;
  var _color2 = Colors.red;
  String deger = "1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Üçgen Oluştur"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Üçgen Özellikleri",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(
                    butonText: "Dolu",
                    onPressed: () {
                      setState(() {
                        _color1 = Colors.green;
                        _color2 = Colors.red;
                        deger = "1";
                      });
                    },
                    butonColor: _color1,
                  ),
                  MyButton(
                      butonText: "Boş",
                      onPressed: () {
                        setState(() {
                          _color2 = Colors.green;
                          _color1 = Colors.red;
                          deger = "0";
                        });
                      },
                      butonColor: _color2),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: nokta1x,
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
                  controller: nokta1y,
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
                  controller: nokta2x,
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
                  controller: nokta2y,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '2. Noktanın Y Koordinatı',
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: nokta3x,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '3. Noktanın X Koordinatı',
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: nokta3y,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '3. Noktanın Y Koordinatı',
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
                      '$deger ${nokta1x.text} ${nokta1y.text} ${nokta2x.text} ${nokta2y.text} ${nokta3x.text} ${nokta3y.text} ');
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
