import 'package:flutter/material.dart';

class ItineraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Adventure'),
      ),
      body: GridView.count(
        crossAxisCount: 2, // 2 columns
        children: <Widget>[
          ItineraryTile(
              'Adventure Enthusiasts', 'assets/images/adventure_image.png'),
          ItineraryTile(
              'History Aficionados', 'assets/images/history_image.png'),
          ItineraryTile('Culinary Seekers', 'assets/images/culinary_image.png'),
          ItineraryTile(
              'Nightlife Revelers', 'assets/images/nightlife_image.png'),
        ],
      ),
    );
  }
}

class ItineraryTile extends StatelessWidget {
  final String label;
  final String imagePath;

  ItineraryTile(this.label, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black.withOpacity(0.5),
        title: Text(
          label,
          style: TextStyle(fontSize: 18, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
