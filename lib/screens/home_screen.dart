import 'package:flutter/material.dart';
import 'package:midter_app/app_colors.dart';
import 'package:midter_app/screens/fashion_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgmain,
        foregroundColor: Colors.black,
        iconTheme: const IconThemeData(),
        title: const Text(
          'eMart',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.qr_code_2_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.shopping_cart_outlined),
                  onPressed: () {},
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
                    // Use ClipRRect to round the image
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
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    cardItem(
                        context, 'Cosmetics', 'assets/images/skincare.jpg'),
                    cardItem(context, 'Fashion', 'assets/images/cloth.jpg'),
                    cardItem(
                        context, 'Restaurants', 'assets/images/deliver.jpg'),
                    cardItem(context, 'Cab Services', 'assets/images/taxi.jpg'),
                    cardItem(context, 'Food Grocery', 'assets/images/card.jpg'),
                    cardItem(context, 'Parcel', 'assets/images/box.jpg'),
                  ],
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
      child: InkWell(
        onTap: () {
          if (title == 'Fashion') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FashionScreen()),
            );
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(180),
                ),
              ),
              child: Image.asset(
                imagePath,
                width: 80,
                height: 80,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
