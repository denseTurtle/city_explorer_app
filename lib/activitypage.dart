import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  final String category;

  ActivityPage({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$category'),
      ),
      body: ListView(
        children: _buildActivities(category),
      ),
    );
  }

  List<Widget> _buildActivities(String category) {
    Map<String, List<Activity>> categoryActivities = {
      'Adventure Enthusiasts': [
        Activity(
          'BridgeClimb Sydney',
          'Scale the iconic Sydney Harbour Bridge with BridgeClimb Sydney. You\'ll ascend to the summit of the bridge, where you can enjoy breathtaking panoramic views of the city and the harbor.',
          'assets/images/adventure1_image.png',
        ),
        Activity(
          'Surfing at Bondi Beach',
          'Sydney is renowned for its stunning beaches, and Bondi Beach is a popular destination for surfers. Whether you\'re a beginner or an experienced surfer, you can find surfing lessons and equipment rentals to catch some waves. ',
          'assets/images/adventure2_image.png',
        ),
        Activity(
          'Coastal Walks and Hikes',
          'For those who prefer more terrestrial adventures, Sydney offers a variety of coastal walks and hiking opportunities. The Bondi to Coogee Coastal Walk is a popular option, providing scenic views and opportunities to explore cliffside trails and beaches.',
          'assets/images/adventure3_image.png',
        ),
        Activity(
          'Skydiving over Wollongong',
          'Just a short drive from Sydney, Wollongong offers the opportunity to experience the ultimate adrenaline rush by skydiving. You\'ll jump out of an airplane and freefall while enjoying panoramic views of the coastline before deploying your parachute.',
          'assets/images/adventure4_image.png',
        ),
      ],
      'History Aficionados': [
        Activity(
          'The Rocks',
          'Begin your historical journey in the heart of Sydney at The Rocks, the city\'s oldest neighborhood. This area is steeped in history, with its cobbled streets and historic buildings. Visit the Sydney Visitor Centre for maps and information, and then take a walking tour to learn about the convict past, early colonial settlement, and maritime history of the area.',
          'assets/images/history1_image.png',
        ),
        Activity(
          'Sydney Living Museums',
          'This network of historic houses, gardens, and museums showcases different aspects of Sydney\'s colonial and early history. Explore sites such as Hyde Park Barracks, Vaucluse House, Elizabeth Farm, and more. Each location provides a unique window into the past and offers guided tours and interactive exhibits.',
          'assets/images/history2_image.png',
        ),
        Activity(
          'Hyde Park and Anzac Memorial',
          'Pay a visit to Hyde Park, one of Sydney\'s most iconic green spaces. Here, you can explore the Anzac Memorial, a tribute to the Australian and New Zealand Army Corps who served in various conflicts. The memorial features a museum and exhibition space, offering a deeper understanding of Australia\'s military history.',
          'assets/images/history3_image.png',
        ),
        Activity(
          'Fort Denison',
          'Located in the middle of Sydney Harbour, Fort Denison is a historical island fortress that dates back to the mid-19th century. You can take a guided tour to learn about its military history, see the Martello Tower, and enjoy panoramic views of the harbor.',
          'assets/images/history4_image.png',
        ),
      ],
      'Culinary Seekers': [
        Activity(
          'Delicious Seafood',
          'Sydney is famous for its fresh seafood, given its proximity to the ocean. Be sure to sample dishes like Sydney rock oysters, barramundi, and Moreton Bay bugs. Visit the Sydney Fish Market for a wide selection of seafood, or dine at seafood restaurants along the coast for a truly authentic experience.',
          'assets/images/culinary1_image.png',
        ),
        Activity(
          'Explore International Cuisine',
          'Sydney is a melting pot of cultures, and you can find a wide range of international cuisines. From Thai and Indian to Italian and Japanese, there are numerous options to explore. Head to areas like Chinatown, Newtown, or Surry Hills to discover authentic international flavors.',
          'assets/images/culinary2_image.png',
        ),
        Activity(
          'Visit Local Markets',
          'Sydney has several vibrant markets where you can sample local and artisanal products. The Rocks Market, Carriageworks Farmers Market, and Bondi Farmers Market are great places to find fresh produce, artisanal cheeses, bread, and other gourmet treats. It\'s also an excellent way to support local producers and artisans.',
          'assets/images/culinary3_image.png',
        ),
        Activity(
          'Savor Australian Bush Food',
          'Explore native Australian ingredients and flavors by trying bush foods. Some restaurants and cafes in Sydney incorporate indigenous ingredients like wattleseed, kangaroo, macadamia nuts, and lemon myrtle into their dishes. This is a unique way to experience the culture and heritage of the region.',
          'assets/images/culinary4_image.png',
        ),
      ],
      'Nightlife Revelers': [
        Activity(
          'Explore the Nightclubs',
          'Sydney boasts a thriving nightclub scene, and areas like Kings Cross, Oxford Street, and the CBD (Central Business District) are known for their nightlife. Some popular venues include Ivy, Marquee Sydney, Home The Venue, and The Argyle. ',
          'assets/images/nightlife1_image.png',
        ),
        Activity(
          'Enjoy Live Music',
          'Sydney is home to numerous live music venues where you can catch local and international artists. The Enmore Theatre, The Metro Theatre, and The Hordern Pavilion are popular spots for live concerts and performances. For a more intimate setting, check out smaller bars and venues like The Vanguard in Newtown or Lazybones Lounge in Marrickville. ',
          'assets/images/nightlife2_image.png',
        ),
        Activity(
          'Bar Hopping',
          'Sydney has a thriving small bar scene, perfect for those who prefer a more relaxed and intimate setting. Explore neighborhoods like Surry Hills, Darlinghurst, and Newtown, where you\'ll find hidden gems like Bulletin Place, Shady Pines Saloon, and Frankie\'s Pizza. These bars often have unique cocktail menus and cozy atmospheres.',
          'assets/images/nightlife3_image.png',
        ),
        Activity(
          'Experience Late-Night Eateries',
          'After a night of revelry, Sydney offers a range of late-night dining options to satisfy your hunger. Visit one of the many 24-hour diners, grab a kebab from one of the numerous takeaway joints, or savor a late-night meal at a restaurant like Golden Century for Chinese cuisine or Harry\'s Cafe de Wheels for iconic meat pies.',
          'assets/images/nightlife4_image.png',
        ),
      ],
    };

    List<Activity> activities = categoryActivities[category] ?? [];

    List<Widget> activityWidgets = activities.map((activity) {
      return Column(
        children: [
          Text(
            activity.title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            activity.description,
            style: TextStyle(fontSize: 16),
          ),
          Image.asset(
            activity.imagePath,
            width: 450,
            height: 450,
          ),
          Divider(),
        ],
      );
    }).toList();

    return activityWidgets;
  }
}

class Activity {
  final String title;
  final String description;
  final String imagePath;

  Activity(this.title, this.description, this.imagePath);
}
