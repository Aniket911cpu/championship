import 'package:flutter/material.dart';

import 'authentication.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          const OnboardingPage(
            title: 'Welcome to Championship',
            description: 'Enjoy the best matches!',
            imageUrl: 'https://via.placeholder.com/300',
          ),
          const OnboardingPage(
            title: 'Discover New Matches',
            description: 'Find and follow your favorite teams.',
            imageUrl: 'https://via.placeholder.com/300',
          ),
          SignUpSignInPage(),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const OnboardingPage({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageUrl),
          const SizedBox(height: 24),
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            description,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}