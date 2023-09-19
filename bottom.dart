import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int currentindex = 3;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Bar")),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: const Color.fromARGB(255, 79, 176, 23),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              backgroundColor: Color.fromARGB(255, 100, 79, 245),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              backgroundColor: const Color.fromARGB(255, 79, 88, 270),
              label: "Settings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: const Color.fromARGB(255, 255, 79, 150),
              label: "Profile"),
        ],
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
      body: Stack(),
    );
  }
}
