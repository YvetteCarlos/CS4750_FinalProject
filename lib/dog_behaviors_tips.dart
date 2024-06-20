import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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

  List<String> outputs = [
    'Interested',
    'Anxious',
    'Needs Space',
    'Stress Relief',
    'Pretty Please',
    'Relaxed',
    'Greetings',
    'Friendly',
  ];

  String selectedMeaning = '';
  String boxImagePath = 'assets/rectangle_box.png';

  void handleTap(int index) {
    setState(() {
      selectedMeaning = outputs[index];
    });
    if (kDebugMode) {
      print(outputs[index]);
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
              elevation: 5.0,
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
