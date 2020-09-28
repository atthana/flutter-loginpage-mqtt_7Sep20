import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'mqtt/state/MQTTAppState.dart';
import 'pages/login.dart';
import 'widgets/mqttview.dart';

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
      home: ChangeNotifierProvider<MQTTAppState>(
        create: (_) => MQTTAppState(),
        // child: MQTTView(),
        child: LoginPage(),
      )
    );
  }
}
