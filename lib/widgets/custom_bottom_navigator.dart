import 'package:flutter/material.dart';

class CustomBottomNavigator extends StatelessWidget {
  const CustomBottomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.deepPurple,
      selectedItemColor: Colors.yellow,
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.gamepad), // mod
          label: "Games",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emoji_events), // mod
          label: "Classifica",
        ),
      ],
    );
  }
}
