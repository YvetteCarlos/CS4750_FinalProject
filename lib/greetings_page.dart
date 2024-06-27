import 'package:flutter/material.dart';


class GreetingsPage extends StatefulWidget {
  const GreetingsPage({super.key, required this.title});


  final String title;

  @override
  State<GreetingsPage> createState() => _GreetingsPageState();
}

class _GreetingsPageState extends State<GreetingsPage> {
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
                'assets/dog7.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top:20.0),
              child: const Text(
                'Greetings',
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
                    'Body language:\n- Downward Stretch\n- Wagging Tail\n Tips: If your dog\n  displays this\n  behavior, this could \n  mean they are happy\n  or want to play.',
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