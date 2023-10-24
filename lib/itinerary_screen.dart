import 'package:flutter/material.dart';

import 'activitypage.dart';

class ItineraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Itinerary Selection'),
      ),
      body: GridView.count(
        childAspectRatio: 0.5,
        crossAxisCount: 2, 
        children: const <Widget>[
          CategoryTile(
              label: 'Adventure Enthusiasts',
              imagePath: 'assets/images/adventure_image.png'),
          CategoryTile(
              label: 'History Aficionados',
              imagePath: 'assets/images/history_image.png'),
          CategoryTile(
              label: 'Culinary Seekers',
              imagePath: 'assets/images/culinary_image.png'),
          CategoryTile(
              label: 'Nightlife Revelers',
              imagePath: 'assets/images/nightlife_image.png'),
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String label;
  final String imagePath;

  const CategoryTile({super.key, required this.label, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ActivityPage(category: label),
          ),
        );
      },
      child: Card(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
