import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(MaterialApp(home:MyApp()) );
}

  
  class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {
  bool isDark = false;
  changeTheme(bool value) {
    isDark = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
  
 return MaterialApp(
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      home: HomePage(changeTheme,isDark),
    );
  }
  }


