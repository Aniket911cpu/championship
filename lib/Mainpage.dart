import 'package:flutter/material.dart';
import 'onboard.dart';
import 'authentication.dart';
import 'profile.dart';
import 'transactions.dart';

class MainPage extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    OnboardingScreen(),
    SignUpSignInPage(),
    ProfileEditPage(balance: 0), // Pass initial balance
    TransactionPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Sign Up/Sign In',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Transactions',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueGrey,
        onTap: _onItemTapped,
      ),
    );
  }
}