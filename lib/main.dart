import 'package:flutter/material.dart';
import 'package:mpesa/Homepage.dart';
import 'package:mpesa/models/balanceprovider.dart';
import 'package:mpesa/models/riverpod.dart';
import 'package:provider/provider.dart';

void main() {

   MultiProvider(providers: [
ChangeNotifierProvider(
  create: (context)=>BottomProvider(),




  ),
  ChangeNotifierProvider(create: (context)=>BalanceProvider(),
  child: MainApp(),),



   ]);
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Homepage(),
    );
  }
}
