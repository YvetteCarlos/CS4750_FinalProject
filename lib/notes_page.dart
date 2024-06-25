import 'package:dogcipher/models/note_model.dart';
import 'package:dogcipher/widgets/note_card.dart';
import 'package:flutter/material.dart';

import 'create_notes.dart';


class EditNotePage extends StatefulWidget {
  const EditNotePage({super.key, required this.title});


  final String title;

  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {

  List<Note> notes = List.empty(growable: true);

  void onNewNoteCreated(Note note){
    notes.add(note);
    setState(() {
    });

  }

  void onNoteDeleted(int index){
    notes.removeAt(index);
    setState(() {

    });

  }

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
              MaterialPageRoute(builder: (context) => MyLogPage(onNewNoteCreated: onNewNoteCreated,)),
            );
          },
          tooltip: 'Increment',
           backgroundColor: Colors.white,
           foregroundColor: Colors.black,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(50.0),
             side: const BorderSide(color: Colors.black, width:3.0 ),
           ),
          child: const Icon(Icons.add),
        ),
        ),
      ],
     ),
      backgroundColor: Colors.white,
      body:ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index){
          return NoteCard(note: notes[index], index: index, onNoteDeleted: onNoteDeleted);
        },
      ),
     /* */// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
