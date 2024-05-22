import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel',
      home: Myhomapage(),
    );
  }
}

class Myhomapage extends StatefulWidget {
  const Myhomapage({super.key});

  @override
  State<Myhomapage> createState() => _MyhomapageState();
}

class _MyhomapageState extends State<Myhomapage> {
  int  _n = 0;
  int  _m = 0;
  @override
  void add() {
    setState(() {
      _n++;
    });
  }
  void sub() {
    setState(() {
      if(_n <= 0){
        _n=0;
      }else{
        _n--;
      }
      ;
    });
  }
  void add2() {
    setState(() {
      _m++;
    });
  }
  void sub2() {
    setState(() {
      if(_m <= 0){
        _m=0;
      }else{
        _m--;
      }
      ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hotel"),
      ),
      body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Icon(Icons.compare_arrows),
                    Text("Las Vegas, NY"),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Icon(Icons.man_2),
                    Text("$_n Guests"),
                    TextButton(
                      onPressed: add,
                      child: new Icon(
                        Icons.add,
                        color: Colors.black,
                      ),

                    ),
                    TextButton(
                      onPressed: sub,
                      child: new Icon(
                        Icons.remove,
                        color: Colors.black,
                      )
                    ),

                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Icon(Icons.bed),
                    Text("$_m Room"),
                    TextButton(
                      onPressed: add2,
                      child: new Icon(
                        Icons.add,
                        color: Colors.black,
                      ),

                    ),
                    TextButton(
                        onPressed: sub2,
                        child: new Icon(
                          Icons.remove,
                          color: Colors.black,
                        )
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Icon(Icons.arrow_forward),
                    Text("Today"),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Icon(Icons.arrow_back),
                    Text("Tomorrow"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(

                          content: Text( " Rooms 2 Guests"),
                        ));
                      },
                      child: Text('Submit'),
                    )
                  ],
                ),
              ],
            ),



          )

      ),
    );
  }
}

