import 'package:flutter/material.dart';


class StressRelief extends StatefulWidget {
  const StressRelief({super.key, required this.title});


  final String title;

  @override
  State<StressRelief> createState() => _StressReliefState();
}

class _StressReliefState extends State<StressRelief> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          children: <Widget>[
            Container(
              height:250,
              margin: const EdgeInsets.only(top: 30.0),
              child: Image.asset(
                'assets/dog4.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top:20.0),
              child: const Text(
                'Stress Relief',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
            Stack(
              children:<Widget> [
                Container(
                  height: 330,
                  margin: const EdgeInsets.only(top: 15.0),
                  child: Image.asset(
                    'assets/info_box.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  top: 35,
                  left: 25,
                  child: Text(
                    'Body language:\n- The Shake Off\n Tips: A positive way \n  your dog deals with\n  stress, reward\n  your dog.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}