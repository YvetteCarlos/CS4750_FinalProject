import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'log_page.dart';


class EditNotePage extends StatefulWidget {
  const EditNotePage({super.key, required this.title});


  final String title;

  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       title: const Text('Log'),
      actions:  [
        Container(
        margin: const EdgeInsets.only(right: 211.0, bottom: 2.0),
         child: FloatingActionButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyLogPage(title: 'Log')),
            );
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
           backgroundColor: Colors.white,
           foregroundColor: Colors.black,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(50.0),
             side: const BorderSide(color: Colors.black, width:3.0 ),
           ),
        ),
        ),
      ],
     ),
      backgroundColor: Colors.white,
      body:const Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
     /* */// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
