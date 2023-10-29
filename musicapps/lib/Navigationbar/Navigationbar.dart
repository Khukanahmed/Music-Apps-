import 'package:flutter/material.dart';
import 'package:musicapps/screen/Music%20Player.dart';
import 'package:musicapps/screen/Musicliabary.dart';
import 'package:musicapps/style/style.dart';

import 'package:sweet_nav_bar/sweet_nav_bar.dart';

import '../screen/Homepage.dart';

class SweetNaveBar extends StatefulWidget {
  const SweetNaveBar({Key? key}) : super(key: key);

  @override
  State<SweetNaveBar> createState() => _SweetNavBarState();
}

class _SweetNavBarState extends State<SweetNaveBar> {
  final List<Widget> _items = [
    Music_laibary(), 
    Homepage(), 
    Music_player()];

  int cIndex = 1;
  final iconLinearGradiant = List<Color>.from([
    const Color.fromARGB(255, 251, 2, 197),
    const Color.fromARGB(255, 72, 3, 80)
  ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: iconLinearGradiant,
            ),
          ),
          child: Center(child: _items[cIndex])),
      bottomNavigationBar: Stack(children: [
        SweetNavBar(
          backgroundColor: Listcolor,
          currentIndex: cIndex,
          paddingBackgroundColor: Color(0xff282d4b),
          items: [
            SweetNavBarItem(
              sweetActive: const Icon(Icons.library_music_outlined),
              sweetIcon: const Icon(
                Icons.library_music_outlined,
              ),
              sweetLabel: 'Home',
              iconColors: iconLinearGradiant,
              //sweetBackground: Colors.red
            ),
            SweetNavBarItem(
                sweetIcon: const Icon(Icons.home_outlined),
                sweetLabel: 'Business'),
            SweetNavBarItem(
                sweetIcon: const Icon(Icons.music_note_outlined),
                sweetLabel: 'School'),
          ],
          onTap: (index) {
            setState(() {
              cIndex = index;
            });
          },
        ),
      ]),
    );
  }
}
