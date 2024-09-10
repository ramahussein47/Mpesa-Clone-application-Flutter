import 'package:flutter/material.dart';
import 'package:mpesa/Grow/grow_page.dart';
import 'package:mpesa/Services1/Services.dart';
import 'package:mpesa/Transact/Transact_page.dart';
import 'package:mpesa/const/const.dart';
import 'package:mpesa/home/home.dart';
import 'package:mpesa/models/riverpod.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<BottomProvider>(
        builder: (BuildContext context, bottomProvider, Widget? child) {
          return IndexedStack(
            index: bottomProvider.selectedIndex,
            children: [
            Home(),
            Transact_page(),
            Services_page(),
            Grow_page(),
            ],
          );
        },
      ),
      bottomNavigationBar: Consumer<BottomProvider>(
        builder: (context, bottomProvider, child) {
          return BottomNavigationBar(

            currentIndex: bottomProvider.selectedIndex,
            selectedItemColor: greenMpesaColor,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: colorWhite,

            onTap: (index) {
              bottomProvider.setIndex(index);
            },
            // ignore: prefer_const_literals_to_create_immutables
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'HOME',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.payment),
                label: 'TRANSACT',
              ),
                BottomNavigationBarItem(
                icon: Icon(Icons.payment),
                label: 'SERVICES',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.trending_up),
                label: 'GROW',
              ),
            ],
          );
        },
      ),
    );
  }
}
