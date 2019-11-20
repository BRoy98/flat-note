import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flat Note',
      theme: ThemeData(
        primaryColor: MaterialColor(0xFF000000, <int, Color>{
          50: Color(0xFF000000),
          100: Color(0xFF000000),
          200: Color(0xFF000000),
          300: Color(0xFF000000),
          400: Color(0xFF000000),
          500: Color(0xFF000000),
          600: Color(0xFF000000),
          700: Color(0xFF000000),
          800: Color(0xFF000000),
          900: Color(0xFF000000)
        }),
        // primarySwatch: Colors.black,
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // double width = MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Padding(
              padding:
                  const EdgeInsets.only(top: 15, right: 0, bottom: 0, left: 15),
              child:
                  Image.asset('assets/images/open-book.png', fit: BoxFit.cover),
            ),
            title: Padding(
              padding: const EdgeInsets.only(
                  top: 15, right: 10, bottom: 0, left: 10),
              child: TextField(
                style: TextStyle(
                    fontSize: 25,
                    height: 2.1,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PlayfairDisplay',
                    color: Colors.black54),
                decoration: InputDecoration(
                    hintText: 'Search...',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide:
                            BorderSide(color: Colors.black, width: 3.0)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide:
                            BorderSide(color: Colors.black, width: 3.0)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        borderSide: BorderSide(color: Colors.black, width: 3))),
              ),
            )),
      ),
    );
  }
}
