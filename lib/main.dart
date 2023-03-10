import 'package:flutter/material.dart';

import 'screen/home/home_screen.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => Homescreen(),
    }),
  );
}
