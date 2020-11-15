import 'package:flutter/material.dart';

class NoktaPage extends StatefulWidget {
  double _nokta1boyut;
  double _nokta1x;
  double _nokta1y;

  NoktaPage(this._nokta1boyut, this._nokta1x, this._nokta1y);

  @override
  _NoktaPageState createState() => _NoktaPageState();
}

class _NoktaPageState extends State<NoktaPage> {
  final noktaBoyut = TextEditingController();
  final xkor = TextEditingController();
  final ykor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Nokta Oluştur"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Nokta Özellikleri",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: xkor,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'X Koordinatı',
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
                  controller: ykor,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Y Koordinatı',
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
                  controller: noktaBoyut,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Boyutu',
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
                  Navigator.pop(
                      context, '${xkor.text} ${ykor.text} ${noktaBoyut.text}');
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
