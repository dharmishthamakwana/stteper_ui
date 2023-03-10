import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stteper_ui/screen/home/provider/home_provider.dart';

import 'screen/home/view/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => HomeProvider(),)],
      child: MaterialApp(debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Homescreen(),
      }),
    ),
  );
}
