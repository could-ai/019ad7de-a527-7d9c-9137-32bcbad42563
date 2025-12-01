import 'package:flutter/material.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business & Law News'),
      ),
      body: ListView.builder(
        itemCount: 10, // Placeholder for news articles
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text('News Article Title ${index + 1}'),
              subtitle: const Text('A brief description of the news article content goes here...'),
              onTap: () {
                // Handle news article tap
              },
            ),
          );
        },
      ),
    );
  }
}
