import 'package:flutter/material.dart';
import 'package:flutter_application_2/product_view_page.dart';
import 'package:flutter_application_2/shopping_cart_page.dart';
import 'profile_page.dart';
import 'settings_page.dart';

class CategoriesPage extends StatelessWidget {
  final List<List<String>> imageUrls = [
    [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrzKyBWlOfeeqHW9_-XUmHOgWsCEUhOydetQ&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrzKyBWlOfeeqHW9_-XUmHOgWsCEUhOydetQ&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrzKyBWlOfeeqHW9_-XUmHOgWsCEUhOydetQ&s',
    ],
    [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrzKyBWlOfeeqHW9_-XUmHOgWsCEUhOydetQ&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrzKyBWlOfeeqHW9_-XUmHOgWsCEUhOydetQ&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrzKyBWlOfeeqHW9_-XUmHOgWsCEUhOydetQ&s',
    ],
    [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrzKyBWlOfeeqHW9_-XUmHOgWsCEUhOydetQ&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrzKyBWlOfeeqHW9_-XUmHOgWsCEUhOydetQ&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrzKyBWlOfeeqHW9_-XUmHOgWsCEUhOydetQ&s',
    ],
  ];

  final List<List<String>> imageNames = [
    ['Item 1', 'Item 2', 'Item 3'],
    ['Item 4', 'Item 5', 'Item 6'],
    ['Item 7', 'Item 8', 'Item 9'],
  ];

  final List<String> rowTitles = [
    'Mens clothing',
    'Womens clothing',
    'Childrens clothes'
  ];

  final List<String> itemLinks = [
    '/settings', // Navigate to SettingsPage
    '/item2',
    '/item3',
    '/item4',
    '/item5',
    '/item6',
    '/item7',
    '/item8',
    '/item9',
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
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.grey[300],
            child: Column(
              children: List.generate(imageUrls.length, (rowIndex) {
                return buildImageRow(rowIndex, context);
              }),
            ),
          ),
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

  Widget buildImageRow(int rowIndex, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              rowTitles[rowIndex],
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 0, 5, 14),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(imageUrls[rowIndex].length, (index) {
                return buildImageItem(
                    imageUrls[rowIndex][index],
                    imageNames[rowIndex][index],
                    itemLinks[rowIndex * 3 + index],
                    context);
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImageItem(
      String imageUrl, String imageName, String link, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, link);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Column(
          children: [
            Container(
              width:
                  MediaQuery.of(context).size.width * 0.25, // Responsive width
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover, // To maintain aspect ratio
              ),
            ),
            SizedBox(height: 8),
            Text(
              imageName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              textAlign: TextAlign.center, // Center the text
            ),
          ],
        ),
      ),
    );
  }
}
