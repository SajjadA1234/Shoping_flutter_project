import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String email;
  final String bio;
  final String avatarUrl;
  final String id;

  ProfilePage({
    required this.name,
    required this.email,
    required this.bio,
    required this.avatarUrl,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Avatar Section
            SizedBox(height: 20), // Space at the top
            CircleAvatar(
              radius: 60, // Adjust the radius for the avatar size
              backgroundImage: NetworkImage(avatarUrl),
              backgroundColor:
                  Colors.grey, // Placeholder color in case of loading issues
            ),
            SizedBox(height: 20), // Space below the avatar
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
                height:
                    30), // Increased space between avatar and details section

            // User Details Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Email
                      Text(
                        'id:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Email:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        email,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(height: 15), // Increased spacing below email
                      // Bio
                      Text(
                        'Bio:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        bio,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 70), // Increased space between details and button

            // Edit Profile Button
            ElevatedButton(
              onPressed: () {
                // Handle edit profile action
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Edit Profile',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20), // Space at the bottom
          ],
        ),
      ),
    );
  }
}
