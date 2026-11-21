import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // Profile Picture
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[300],
              child: const Icon(
                Icons.person,
                size: 50,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 12),

            // User Name
            const Text(
              'Rana Mohy',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Options List
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: const [
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Profile'),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Setting'),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.mail),
                      title: Text('Contact'),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.share),
                      title: Text('Share App'),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.help),
                      title: Text('Help'),
                      trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Sign Out
            TextButton(
              onPressed: () {},
              child: const Text(
                'Sign Out',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),

    );
  }
}