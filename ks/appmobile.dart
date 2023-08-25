import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:OlaRY(),
    ));
}

class OlaRY extends StatefulWidget {
  const OlaRY({ Key? key }) : super(key: key);

  @override
  _OlaRYState createState() => _OlaRYState();
}

class _OlaRYState extends State<OlaRY> {
  @override
  Widget build(BuildContext context) {
    return Container(
child: Text("KAIO",
                style: TextStyle(decoration: TextDecoration.none,
                                 color: Color.fromARGB(255, 65, 189, 247)),),      alignment: Alignment.center,
      margin: EdgeInsets.all(10.0),
      color: Color.fromARGB(255, 0, 0, 0),

    );
  }
}