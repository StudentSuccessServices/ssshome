import 'package:flutter/material.dart';
import 'package:ssshome/src/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Student Success Services'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Center(
              child: Text(
                'Welcome to Student Success Services!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            SizedBox(height: 400, width: 400, child: Image(image: AssetImage('assets/images/owl2a.png'))),
            Center(
              child: Text(
                'We are here to support the academic journey, from getting started through your successful outcomes.',
                style: TextStyle(fontSize: 18),
              ),
            ),
                        SizedBox(height: 10),

            Center(
              child: Text("To join our private preview, email Austin at austin@studentsuccessservices.org"),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
      endDrawer: const MyDrawer(),
    );
  }
}
