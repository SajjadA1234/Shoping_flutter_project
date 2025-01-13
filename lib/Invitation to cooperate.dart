import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Grid Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CardGridPage(),
    );
  }
}

class CardGridPage extends StatelessWidget {
  final List<String> imageUrls = [
    'https://via.placeholder.com/150.png?text=Image+1',
    'https://via.placeholder.com/150.png?text=Image+2',
    'https://via.placeholder.com/150.png?text=Image+3',
    'https://via.placeholder.com/150.png?text=Image+4',
    'https://via.placeholder.com/150.png?text=Image+5',
    'https://via.placeholder.com/150.png?text=Image+6',
    'https://via.placeholder.com/150.png?text=Image+7',
    'https://via.placeholder.com/150.png?text=Image+8',
    'https://via.placeholder.com/150.png?text=Image+9',
  ];

  final List<String> customTexts = [
    'Custom Text 1',
    'Custom Text 2',
    'Custom Text 3',
    'Custom Text 4',
    'Custom Text 5',
    'Custom Text 6',
    'Custom Text 7',
    'Custom Text 8',
    'Custom Text 9',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Grid Example'),
      ),
      body: Container(
        color: Colors.grey[300],
        child: GridView.builder(
          padding: const EdgeInsets.all(8.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    imageUrls[index],
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 8),
                  Text(
                    customTexts[index], // Use custom text for each card
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CollaborationPage(),
                        ),
                      );
                    },
                    child: Text('Register'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CollaborationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Collaboration Page'),
      ),
      body: Center(
        child: Text('Welcome to the Collaboration Page!'),
      ),
    );
  }
}
