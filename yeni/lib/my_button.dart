import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String butonText;
  final Color butonColor;
  final Color textColor;
  final double radius;
  final double yukseklik;
  final Widget butonIcon;
  final VoidCallback onPressed;
  final double fontSize;

  const MyButton(
      {Key key,
      @required this.butonText,
      this.butonColor: Colors.green,
      this.textColor: Colors.white,
      this.radius: 30,
      this.yukseklik: 30,
      this.butonIcon,
      this.fontSize: 20,
      @required this.onPressed})
      : assert(butonText != null, onPressed != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: SizedBox(
        height: yukseklik,
        child: RaisedButton(
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(radius),
            ),
          ),
          child: Row(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              if (butonIcon != null) ...[
                butonIcon,
                Text(
                  butonText,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: textColor, fontSize: fontSize),
                ),
                Opacity(opacity: 0, child: butonIcon)
              ],
              if (butonIcon == null) ...[
                Container(),
                Text(
                  butonText,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: textColor, fontSize: fontSize),
                ),
                Container(),
              ]
            ],
          ),
          color: butonColor,
        ),
      ),
    );
  }
}
