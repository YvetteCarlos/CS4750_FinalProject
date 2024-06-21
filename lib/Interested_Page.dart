import 'package:flutter/material.dart';


class InterestedPage extends StatefulWidget {
  const InterestedPage({super.key, required this.title});


  final String title;

  @override
  State<InterestedPage> createState() => _InterestedPageState();
}

class _InterestedPageState extends State<InterestedPage> {

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
                  'assets/dog1.png',
                  fit: BoxFit.cover,
              ),
            ),
           Container(
             margin: const EdgeInsets.only(top:20.0),
             child: const Text(
               'Interested',
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
                      'Body language:\n- Alert Eyes\n- Ears Perked\n- Facing Forward\n Tips: If your dog\n  displays this\n  behavior, observe\n  the culprits.',
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