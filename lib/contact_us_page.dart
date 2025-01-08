import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactUsPage extends StatelessWidget {
  final double iconSize;
  final double textSize;
  final Color iconColor;
  final double spacing;

  ContactUsPage({
    this.iconSize = 24.0,
    this.textSize = 24.0,
    this.iconColor = Colors.black,
    this.spacing = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Container(
        color: Colors.grey[200], // Set the background color to light gray
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contact Us',
                style:
                    TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Add your Instagram link here
                    },
                    child: SvgPicture.asset(
                      'assets/icons/instagram-2016-logo-svgrepo-com.svg',
                      height: iconSize,
                      color: iconColor,
                    ),
                  ),
                  SizedBox(width: spacing),
                  GestureDetector(
                    onTap: () {
                      // Add your Telegram link here
                    },
                    child: SvgPicture.asset(
                      'assets/icons/telegram-svgrepo-com.svg',
                      height: iconSize,
                      color: Color.fromARGB(255, 96, 138, 228),
                    ),
                  ),
                  SizedBox(width: spacing),
                  GestureDetector(
                    onTap: () {
                      // Add your WhatsApp link here
                    },
                    child: SvgPicture.asset(
                      'assets/icons/whatsapp-whats-app-svgrepo-com.svg',
                      height: iconSize,
                      color: Color.fromARGB(255, 107, 224, 103),
                    ),
                  ),
                  SizedBox(width: spacing),
                  GestureDetector(
                    onTap: () {
                      // Add your Twitter link here
                    },
                    child: SvgPicture.asset(
                      'assets/icons/twitter-3-svgrepo-com.svg',
                      height: iconSize,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: spacing * 4),
              Text(
                'Phone: +123 456 7890',
                style: TextStyle(fontSize: textSize),
              ),
              SizedBox(height: 50),
              Text(
                'Address: 123 Fake Street, City, Country',
                style: TextStyle(fontSize: textSize),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
