import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  //Buat menampung data
  final String email, pass;
  Detail(this.email, this.pass);
  @override
  _DetailState createState() => _DetailState(this.email, this.pass);
}

class _DetailState extends State<Detail> {
  //Buat nampung data yg udh diambil
  final String email, pass;
  _DetailState(this.email, this.pass);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home page")),
      body: Container(
        decoration: BoxDecoration(color: Colors.blueAccent),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: "Hello "),
                      TextSpan(
                        text: "${this.email}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: "\nYour password "),
                      TextSpan(
                        text: "${this.pass}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
