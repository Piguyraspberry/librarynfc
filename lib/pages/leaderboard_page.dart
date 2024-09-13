import 'package:flutter/material.dart';

class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({super.key});

  @override
  State<LeaderboardPage> createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  int _selectedIndex = 1; // Set the initial selected index to 1 for the leaderboard page

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF656565),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Leaderboard',
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
                'See how you rank among other adventurers. Compete for the top spot!',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Rounded Mplus 1c',
                  color: Colors.grey[300],
                ),
                textAlign: TextAlign.center,
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