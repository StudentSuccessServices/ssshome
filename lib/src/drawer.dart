import 'package:flutter/material.dart';
import 'package:ssshome/src/accessibility.dart';
import 'package:ssshome/src/privacy.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Student Success Services',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.accessibility),
            title: const Text('Accessibility'),
            onTap: () {
              // Close the drawer
              Navigator.pop(context);
              // Navigate to the accessibility page
              Navigator.pushNamed(context, AccessibilityView.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: const Text('Privacy Policy'),
            onTap: () {
              // Close the drawer
              Navigator.pop(context);
              // Navigate to the privacy policy page
              Navigator.pushNamed(context, PrivacyView.routeName);
            },
          ),
         // Add more ListTiles for other drawer items as needed
        ],
      ),
    );
  }
}