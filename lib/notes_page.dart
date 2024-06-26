import 'package:dogcipher/models/note_model.dart';
import 'package:dogcipher/widgets/note_card.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'create_notes.dart';
import 'dart:convert';



class EditNotePage extends StatefulWidget {
  const EditNotePage({super.key, required this.title});


  final String title;

  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {

  List<Note> notes = List.empty(growable: true);
  @override
  void initState() {
    super.initState();
    _loadNotes();
  }

  void _loadNotes() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      notes = prefs.getStringList('notes')?.map((item) => Note.fromJson(jsonDecode(item))).toList() ?? [];
    });
  }

  void _saveNotes() async {
      final prefs = await SharedPreferences.getInstance();
      List<String> serializedNotes = notes.map((note) => jsonEncode(note.toJson())).toList();
      await prefs.setStringList('notes', serializedNotes);
  }

  void onNoteUpdated(int index, Note updatedNote) {
    setState(() {
      notes[index] = updatedNote;
      _saveNotes();
    });
  }

  void onNewNoteCreated(Note note){

    setState(() {
      notes.add(note);
      _saveNotes();
    });

  }

  void onNoteDeleted(int index){

    setState(() {
      notes.removeAt(index);
      _saveNotes();
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
          return NoteCard(note: notes[index], index: index, onNoteDeleted: onNoteDeleted, onNoteUpdated: onNoteUpdated,);
        },
      ),
     /* */// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
