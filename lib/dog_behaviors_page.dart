import 'package:flutter/material.dart';

class DogBehaviorsPage extends StatefulWidget {
  const DogBehaviorsPage({super.key, required this.title});

  final String title;

  @override
  State<DogBehaviorsPage> createState() => _DogBehaviorsPageState();
}

class _DogBehaviorsPageState extends State<DogBehaviorsPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,

        title: Text(widget.title),
      ),
      body:
      Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: GridView.builder(
          itemCount: 8,
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 1.0,
            childAspectRatio: 1.5,

          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top:10.0, bottom: 10.0, left: 40.0, right: 40.0),
              child: Container(
                color: Colors.blue,
                height: 50,
                width: 50,
              ),
            );
          },
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
