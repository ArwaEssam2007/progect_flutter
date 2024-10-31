import 'package:butttttttttttttttttttttttttton/colorchange.dart';
import 'package:butttttttttttttttttttttttttton/providercolor.dart';
import 'package:butttttttttttttttttttttttttton/visibility.dart';
import 'package:butttttttttttttttttttttttttton/visprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counterApp.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
          create: (context) => VisibilityProvider(),
          child: Vis()),
    );
  }
}
