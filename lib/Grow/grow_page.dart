import 'package:flutter/material.dart';
import 'package:mpesa/const/const.dart';

class Grow_page extends StatefulWidget {
  const Grow_page({super.key});

  @override
  State<Grow_page> createState() => _Grow_pageState();
}

class _Grow_pageState extends State<Grow_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('GROW',
        style: TextStyle(
          color: colorWhite,

        ),),
      ),
    );
  }
}
