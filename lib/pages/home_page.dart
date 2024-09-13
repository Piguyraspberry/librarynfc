import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF656565),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Library Scavenger Hunt',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                fontFamily: 'Rounded Mplus 1c',
                color: Color(0xFFE29701), // Exact gold color
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFF404040),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Embark on a thrilling adventure through the library. Solve puzzles, find hidden clues, and unlock the secrets of the collection.',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Rounded Mplus 1c',
                  color: Colors.grey[300],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Navigate to the puzzle page
              },
              child: const Text('Start Adventure'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF404040),
                foregroundColor: Color(0xFFE29701), // Exact gold color
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFE29701), // Exact gold color
        unselectedItemColor: Colors.grey[600],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            if (index != _selectedIndex) {
              _selectedIndex = index;
              Navigator.popAndPushNamed(context, getRouteForIndex(index));
            }
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: 'Leaderboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  String getRouteForIndex(int index) {
    switch (index) {
      case 0:
        return '/'; // Navigate back to the home page
      case 1:
        return '/#/leaderboard';
      case 2:
        return '/#/settings';
      default:
        return '/';
    }
  }
}