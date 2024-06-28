import 'package:dogcipher/friendly_page.dart';
import 'package:dogcipher/greetings_page.dart';
import 'package:dogcipher/needs_space_page.dart';
import 'package:dogcipher/pretty_please_page.dart';
import 'package:dogcipher/relaxed_page.dart';
import 'package:dogcipher/stress_relief_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Interested_Page.dart';
import 'anxious_page.dart';
const String page1 = '/Interested_Page';
const String page2 = '/anxious_page';
class DogBehaviorsTips extends StatefulWidget {
  const DogBehaviorsTips({super.key, required this.title});

  final String title;

  @override
  State<DogBehaviorsTips> createState() => _DogBehaviorsTipsState();
}

class _DogBehaviorsTipsState extends State<DogBehaviorsTips> {
  List<String> imagePaths = [
    'assets/dog1.png',
    'assets/dog2.png',
    'assets/dog3.png',
    'assets/dog4.png',
    'assets/dog5.png',
    'assets/dog6.png',
    'assets/dog7.png',
    'assets/dog8.png',
  ];


  void handleTap(int index) {
    switch(index){
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const InterestedPage(title: 'Pose Information')),
        );
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AnxiousPage(title: 'Pose Information')),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NeedsSpace(title: 'Pose Information')),
        );
        break;

      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const StressRelief(title: 'Pose Information')),
        );
        break;

      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PrettyPlease(title: 'Pose Information')),
        );
        break;

      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const RelaxedPage(title: 'Pose Information')),
        );
        break;

      case 6:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const GreetingsPage(title: 'Pose Information')),
        );
        break;

      case 7:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FriendlyPage(title: 'Pose Information')),
        );
        break;


    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
      Expanded(
      child: Padding(
      padding: const EdgeInsets.fromLTRB(50.0, 40.0, 50.0, 0.0),
      child: GridView.builder(
        itemCount: imagePaths.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 60.0,
          childAspectRatio: 1.0,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              handleTap(index);
            },
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(1.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(1.0),
                child: AspectRatio(
                  aspectRatio: 1.0,
                  child: Image.asset(
                    imagePaths[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    ),
    ),
    ],
      ),
    );
  }
}
