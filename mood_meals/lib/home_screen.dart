import 'package:flutter/material.dart';
import 'mood_card.dart';
import 'mood_screen.dart';

class HomeScreen extends StatelessWidget {
  final List moods = [
    {
      "emoji": "😄",
      "title": "Happy",
      "food": "Pizza",
      "music": "Pop Music",
      "color": Colors.orange,
    },

    {
      "emoji": "🥲",
      "title": "Sad",
      "food": "Ice Cream",
      "music": "Lo - fi Beats",
      "color": Colors.blue,
    },

    {
      "emoji": "⚡",
      "title": "Energetic",
      "food": "Burger",
      "music": "EDM",
      "color": Colors.red,
    },

    {
      "emoji": "😚",
      "title": "Chill",
      "food": "Coffee",
      "music": "Jazz",
      "color": Colors.green,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mood Meals"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: GridView.builder(
          itemCount: moods.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            final mood = moods[index];

            return MoodCard(
              emoji: mood["emoji"],
              title: mood["title"],
              color: mood["color"],

              OnTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MoodScreen(
                      emoji: mood["emoji"],
                      title: mood["title"],
                      food: mood["food"],
                      music: mood["music"],
                      color: mood["color"],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
