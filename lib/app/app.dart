import 'package:determinants/app/screens/four_dimension/four_dimension.dart';
import 'package:determinants/app/screens/three_dimension/home.dart';
import 'package:determinants/app/screens/two_dimension/two_dimension.dart';
import 'package:flutter/material.dart';

class MatrixEvaluator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(),
      routes: {
        '/': (context) => Home(),
        '/four_dimension': (context) => FourDimension(),
        '/two_dimension': (context) => TwoDimension(),
      },
    );
  }
}
