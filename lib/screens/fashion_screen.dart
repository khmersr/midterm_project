import 'package:flutter/material.dart';
import 'package:midter_app/app_colors.dart';

class FashionScreen extends StatelessWidget {
  const FashionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgmain,
        foregroundColor: Colors.black,
        iconTheme: const IconThemeData(),
        actions: [
          Container(
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.shopping_cart_outlined),
                  onPressed: () {},
                  style: const ButtonStyle(
                    iconColor: WidgetStatePropertyAll(Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Container(
        color: AppColors.bgmain,
        child: Stack(
          children: <Widget>[
            ListView(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 13.0, 0.0),
              children: <Widget>[
                // Row to align search box and filter icon
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        margin: const EdgeInsets.only(bottom: 10.0),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            backgroundColor: Colors.white54,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.search, color: Colors.black),
                              const SizedBox(width: 8.0),
                              const Text('Search',
                                  style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    IconButton(
                      icon: const Icon(Icons.filter_list, color: Colors.black),
                      onPressed: () {},
                      style: const ButtonStyle(
                        iconColor: WidgetStatePropertyAll(Colors.black),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    color: Colors.white,
                  ),
                  height: 180,
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    child: Image.asset(
                      'assets/images/banner.jpg',
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      width: double.infinity,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top Categories',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 198, // Adjust height as needed
                  margin: const EdgeInsets.only(top: 10.0),
                  child: GridView.count(
                    crossAxisCount: 4, // Display 4 items in each row
                    crossAxisSpacing: 10.0, // Add spacing between items
                    mainAxisSpacing: 10.0, // Add spacing between rows
                    children: [
                      cardItem(context, 'Man', 'assets/images/skincare.jpg'),
                      cardItem(context, 'Woman', 'assets/images/cloth.jpg'),
                      cardItem(context, 'Kids', 'assets/images/deliver.jpg'),
                      cardItem(context, 'Shoes', 'assets/images/taxi.jpg'),
                      cardItem(context, 'Jewelry', 'assets/images/card.jpg'),
                      cardItem(context, 'Beauty Core', 'assets/images/box.jpg'),
                      cardItem(context, 'Sports', 'assets/images/cloth.jpg'),
                      cardItem(context, 'Toys', 'assets/images/cloth.jpg'),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'New Arrivals',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                // My Profile with horizontal scrolling
                Container(
                  padding: const EdgeInsets.only(top: 10.0),
                  height: 120.0, // Adjust height to fit your profile cards
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ProfileCard(
                          imagePath: 'assets/images/banner.jpg',
                          title: 'The French Loft',
                          subtitle: 'Min 20% off',
                        ),
                        const SizedBox(width: 10.0),
                        ProfileCard(
                          imagePath: 'assets/images/banner.jpg',
                          title: 'The French Loft',
                          subtitle: 'Min 20% off',
                        ),
                        const SizedBox(width: 10.0),
                        ProfileCard(
                          imagePath: 'assets/images/banner.jpg',
                          title: 'The French Loft',
                          subtitle: 'Min 20% off',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget cardItem(BuildContext context, String title, String imagePath) {
    return Card(
      elevation: 4.0, // Adds a shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Rounded corners
      ),
      child: Column(
        mainAxisSize: MainAxisSize
            .min,
        crossAxisAlignment:
            CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.0), // Padding around the image
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(10.0), // Rounded corners for the image
              child: Image.asset(
                imagePath,
                width: 30, // Adjust width as needed
                height: 30, // Adjust height as needed
                fit: BoxFit.cover, // Ensures the image covers the container
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0), // Padding around the text
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 8, // Adjust text size as needed
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // Center-align text
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const ProfileCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 90.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: Colors.white38,
      ),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(200.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              alignment: Alignment.center,
              width: 50.0,
              height: 50.0,
            ),
          ),
          const SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
