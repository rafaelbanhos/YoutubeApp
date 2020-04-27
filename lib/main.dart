import 'package:flutter/material.dart';
import 'package:youtubeapp/api.dart';
import 'package:youtubeapp/screens/home_screen.dart';

void main() {
  
  Api api = Api();
  api.search("eletro");


  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "YouTube App",
      home: HomeScreen(),
    );
  }
}
