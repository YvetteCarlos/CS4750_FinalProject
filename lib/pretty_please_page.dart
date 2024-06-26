import 'package:flutter/material.dart';


class PrettyPlease extends StatefulWidget {
  const PrettyPlease({super.key, required this.title});


  final String title;

  @override
  State<PrettyPlease> createState() => _PrettyPleaseState();
}

class _PrettyPleaseState extends State<PrettyPlease> {
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
                'assets/dog5.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top:20.0),
              child: const Text(
                'Pretty Please',
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
                    'Body language:\n- Puppy Face\n- Ears Down\n- Eyes Looking Up\n Tips: If your dog\n  displays this\n  behavior, assess \n  your dogs wants.',
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