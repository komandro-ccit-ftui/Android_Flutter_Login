import 'package:flutter/material.dart';
import 'package:login/pages/detail.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  RegExp regx = RegExp(r"^[a-z0-9_]*$", caseSensitive: false);
  final _formKey = GlobalKey<FormState>();
  final emailText = TextEditingController();
  final passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //isi scaffold
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("login Page"),
      ),
      body: Container(
        //isi body: Container
        decoration: BoxDecoration(
          //jumlah stop berbanding lurus dengan jumlah warna
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            //jumlah stop berbanding lurus dengan jumlah warna
            stops: [0.3, 0.6, 0.9],
            colors: [
              Color.fromRGBO(12, 235, 235, 1),
              Color.fromRGBO(32, 227, 178, 1),
              Color.fromRGBO(41, 255, 198, 1),
            ],
          ),
        ),
        child: Container(
          //isi child: Container
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                //jumlah stop berbanding lurus dengan jumlah warna
                stops: [0.3, 0.6, 0.9],
                colors: [
                  Color.fromRGBO(12, 235, 235, 1),
                  Color.fromRGBO(32, 227, 178, 1),
                  Color.fromRGBO(41, 255, 198, 1),
                ],
              ),
              boxShadow: [
                BoxShadow(
                    blurRadius: 18.0,
                    color: Colors.transparent.withOpacity(.5),
                    spreadRadius: 12.5),
              ]),
          margin: EdgeInsets.fromLTRB(40, 35, 40, 50),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 45, top: 15),
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/srg.png', width: 99, height: 45),
                    Text(
                      "Login",
                      style: TextStyle(
                          fontFamily: 'LexendDeca',
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 40, 10, 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Text("Email"),
                      Container(
                          margin: EdgeInsets.only(top: 10, bottom: 8),
                          child: TextFormField(
                            controller: emailText,
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Enter Some Text';
                              } else if (value.length > 7) {
                                return 'Too many character';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText: "Email",
                                prefixIcon: Icon(Icons.message),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(28))),
                          )),
                      Text("Password"),
                      Container(
                          margin: EdgeInsets.only(top: 10, bottom: 8),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: passText,
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Enter Some Text';
                              } else if (!(regx.hasMatch(value))) {
                                return 'Dont use special character';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText: "Password",
                                prefixIcon: Icon(Icons.lock),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(28))),
                          )),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text('Sign In'),
                        // ignore: missing_return
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Detail(emailText.text, passText.text),
                              ),
                            );
                          }
                        },
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.black12,
                        textColor: Colors.white,
                        child: Text('Forgot password'),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
            ],
            //isi child: Column
          ),
          //child: Container
        ),
        //body: Container
      ),
      //scaffold
    );
  }
}
