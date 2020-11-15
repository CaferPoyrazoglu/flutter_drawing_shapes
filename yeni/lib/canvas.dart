import 'package:flutter/material.dart';
import 'package:yeni/my_button.dart';
import 'package:yeni/pages/cizgipage.dart';
import 'package:yeni/pages/noktapage.dart';
import 'package:yeni/pages/ucgenpage.dart';

// ignore: must_be_immutable
class CanvasPage extends StatefulWidget {
  final double text1;
  final double text2;

  Canvas canvas;
  CanvasPage(this.text1, this.text2);

  @override
  _CanvasPageState createState() => _CanvasPageState();
}

class _CanvasPageState extends State<CanvasPage> {
  var _color = Colors.red;

  double _nokta1boyut = 1;
  double _nokta1x = 1;
  double _nokta1y = 1;

  double _cizgi1kalinlik = 1;
  double _cizgi1x = 1;
  double _cizgi1y = 1;
  double _cizgi2x = 1;
  double _cizgi2y = 1;

  PaintingStyle _ucgenDoluMu = PaintingStyle.stroke;
  double _ucgen1x = 1;
  double _ucgen1y = 1;
  double _ucgen2x = 1;
  double _ucgen2y = 1;
  double _ucgen3x = 1;
  double _ucgen3y = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Canvas"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomPaint(
                    size: Size(MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height),
                    painter: ShapesPainter(
                      widget.text1.toString(),
                      _color,
                      _nokta1boyut,
                      _nokta1x,
                      _nokta1y,
                      _cizgi1kalinlik,
                      _cizgi1x,
                      _cizgi1y,
                      _cizgi2x,
                      _cizgi2y,
                      _ucgenDoluMu,
                      _ucgen1x,
                      _ucgen1y,
                      _ucgen2x,
                      _ucgen2y,
                      _ucgen3x,
                      _ucgen3y,
                    ),
                    child: Container(
                      width: widget.text1,
                      height: widget.text2,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 16, 32, 2),
                child: MyButton(
                  butonColor: Colors.green,
                  butonText: "Nokta Oluştur",
                  onPressed: () async {
                    final noktaSonuc = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              NoktaPage(_nokta1boyut, _nokta1x, _nokta1y)),
                    );

                    var arr = noktaSonuc.split(" ");
                    //print(arr[0] + " " + arr[1] + " " + arr[2]);

                    setState(() {
                      _color = Colors.red;
                      _nokta1x = double.parse(arr[0]);
                      _nokta1y = double.parse(arr[1]);
                      _nokta1boyut = double.parse(arr[2]);
                    });
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 32, 2),
                child: MyButton(
                  butonColor: Colors.blue,
                  butonText: "Çizgi Oluştur",
                  onPressed: () async {
                    final cizgiSonuc = await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CizgiPage()),
                    );

                    var arr = cizgiSonuc.split(" ");

                    setState(() {
                      _cizgi1kalinlik = double.parse(arr[0]);
                      _cizgi1x = double.parse(arr[1]);
                      _cizgi1y = double.parse(arr[2]);
                      _cizgi2x = double.parse(arr[3]);
                      _cizgi2y = double.parse(arr[4]);
                    });
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 32, 2),
                child: MyButton(
                  butonColor: Colors.red,
                  butonText: "Üçgen Oluştur",
                  onPressed: () async {
                    final ucgenSonuc = await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UcgenPage()),
                    );
                    var arr = ucgenSonuc.split(" ");

                    setState(() {
                      _color = Colors.red;

                      if (arr[0] == "0") {
                        _ucgenDoluMu = PaintingStyle.stroke;
                      } else {
                        _ucgenDoluMu = PaintingStyle.fill;
                      }
                      _color = Colors.red;
                      _ucgen1x = double.parse(arr[1]);
                      _ucgen1y = double.parse(arr[2]);
                      _ucgen2x = double.parse(arr[3]);
                      _ucgen2y = double.parse(arr[4]);
                      _ucgen3x = double.parse(arr[5]);
                      _ucgen3y = double.parse(arr[6]);
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShapesPainter extends CustomPainter {
  ShapesPainter(
    this.sayi,
    this.color2,
    this._nokta1boyut,
    this._nokta1x,
    this._nokta1y,
    this._cizgi1kalinlik,
    this._cizgi1x,
    this._cizgi1y,
    this._cizgi2x,
    this._cizgi2y,
    this._ucgenDoluMu,
    this._ucgen1x,
    this._ucgen1y,
    this._ucgen2x,
    this._ucgen2y,
    this._ucgen3x,
    this._ucgen3y,
  );
  //ShapesPainter(this.canvas2,this.size2);
  String sayi;
  double _nokta1boyut;
  double _nokta1x;
  double _nokta1y;
  double _cizgi1kalinlik;
  double _cizgi1x;
  double _cizgi1y;
  double _cizgi2x;
  double _cizgi2y;
  double _ucgen1x;
  double _ucgen1y;
  double _ucgen2x;
  double _ucgen2y;
  double _ucgen3x;
  double _ucgen3y;
  PaintingStyle _ucgenDoluMu;
  final Color color2;
  @override
  void paint(Canvas canvas, Size size) {
    double sayi2 = double.parse("$sayi");
    var rect = Offset.zero & size;
    rect =
        Rect.fromLTWH(_nokta1x, sayi2 - _nokta1y, _nokta1boyut, _nokta1boyut);
    Paint rectPaint = Paint()..color = color2;
    canvas.drawRect(
      rect,
      rectPaint,
    );

    Paint line = new Paint()
      ..color = color2
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.fill
      ..strokeWidth = _cizgi1kalinlik;
    //1.nokta x-y     //2.nokta x-y
    canvas.drawLine(Offset(_cizgi1x, sayi2 - _cizgi1y),
        Offset(_cizgi2x, sayi2 - _cizgi2y), line);

    Paint paint = Paint()
      ..color = Colors.red
      ..style = _ucgenDoluMu
      ..strokeWidth = 3;

    Path path = Path();
    path.addPolygon([
      Offset(_ucgen1x, sayi2 - _ucgen1y),
      Offset(_ucgen2x, sayi2 - _ucgen2y),
      Offset(_ucgen3x, sayi2 - _ucgen3y)
    ], true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
