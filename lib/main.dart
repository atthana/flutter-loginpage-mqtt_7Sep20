import 'package:day12_login/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // final _route = <String, WidgetBuilder>{
  //   '/login': (BuildContext context) => LoginPage(),
  // };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: _route,

      debugShowCheckedModeBanner: false,
      // theme: ThemeData(primarySwatch: Colors.blue),
      theme: ThemeData(primaryColor: Color(0xFF6065D6)),
      title: 'Dogelbow',
      home: LoginPage(),
    );
  }
}
