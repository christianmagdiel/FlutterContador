import 'package:contador/src/pages/contador_pages.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Center(
          child: ContadorPages(),
        )
    );
  }
}