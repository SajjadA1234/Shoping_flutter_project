import 'package:flutter/material.dart';
import 'package:flutter_application_2/categories_page.dart';
import 'package:flutter_application_2/contact_us_page.dart';
import 'package:flutter_application_2/product_view_page.dart';
import 'package:flutter_application_2/shopping_cart_page.dart';
import 'profile_page.dart';
import 'settings_page.dart';

class HomePage extends StatelessWidget {
  final List<String> imageUrls = [
    'https://example.com/image1.jpg',
    'https://example.com/image2.jpg',
    'https://example.com/image3.jpg',
    'https://example.com/image4.jpg',
    'https://example.com/image5.jpg',
    'https://example.com/image6.jpg',
  ];

  final List<String> productNames = [
    'Product A',
    'Product B',
    'Product C',
    'Product D',
    'Product E',
    'Product F',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stonway'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShoppingCartPage()),
              );
              // Handle shopping cart action
            },
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfilePage(
                            name: 'ali',
                            email: 'sdd@gmail.com',
                            bio: 'nfjvndfbvb',
                            id: '@bjbhgbg',
                            avatarUrl:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrzKyBWlOfeeqHW9_-XUmHOgWsCEUhOydetQ&s',
                          )),
                );
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
            ListTile(
              title: Text('Categories'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoriesPage()),
                );
              },
            ),
            ListTile(
              title: Text('contact_us_page'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUsPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(productNames.length, (index) {
            return Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: 100,
                    child: Image.network(
                      imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      productNames[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      '\$${(index + 1) * 10}',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Discount: ${index * 10}%',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductViewPage()),
                        );
                        // Handle see more action
                      },
                      child: Text('See More'),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            '© 2023 Stonway. All rights reserved. Dummy text for footer.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
