import 'package:dogcipher/dog_behaviors_page.dart';
import 'package:dogcipher/dog_behaviors_tips.dart';
import 'package:flutter/material.dart';

import 'log_page.dart';

class MyDashboardPage extends StatefulWidget {
  const MyDashboardPage({super.key, required this.title});


  final String title;

  @override
  State<MyDashboardPage> createState() => _MyDashboardPageState();
}

class _MyDashboardPageState extends State<MyDashboardPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Dashboard'),
         actions: [
         Container(
           width: 150,
           height: 200,
           child: IconButton(
            icon: Image.asset('assets/img.png'),
            onPressed: null,
                   ),
            ),
         ],
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            
            Container(
              height: 50,
              width: 280,
              margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DogBehaviorsPage(title: 'Dog Behaviors')),
                  );
                },
                child: const Text(
                  'Translate',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 280,
              margin: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyLogPage(title: 'Log')),
                  );
                },
                child: const Text(
                  'Log',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 280,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent[400],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DogBehaviorsTips(title: 'Dog Behaviors Tips')),
                  );
                },
                child: const Text(
                  'Tips',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


