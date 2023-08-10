import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Task Manager'),
      // ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('John Doe'),
              accountEmail: Text('johndoe@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://newprofilepic.photo-cdn.net//assets/images/article/profile.jpg?4d355bd"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // Add your action here
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Add your action here
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help'),
              onTap: () {
                // Add your action here
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              onTap: () {
                // Add your action here
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      // body: const Center(
      //   child: Text('Profile Drawer Example'),
      // ),
    );
  }
}
