import 'package:flutter/material.dart';

class Lectures extends StatefulWidget {
  @override
  _LecturesState createState() => _LecturesState();
}

class _LecturesState extends State<Lectures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Color(0xff819F75),

      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15.0),
            )
        ),
        title: Center(
          child: new Container(
            width: 240.0,
            height: 240.0,
            child: Image.asset('images/Kaaba.png'),
          ),
        ),
        toolbarHeight: 160.0,
        backgroundColor: Colors.white,
      ),

      body: new Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/Masjid.png',
                ),
                fit: BoxFit.cover
            )
        ),
      )
    );
  }
}
