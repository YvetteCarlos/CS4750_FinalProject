import 'package:dogcipher/models/note_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key, required this.note, required this.index, required this.onNoteDeleted});

  final Note note;
  final int index;
  final Function(int) onNoteDeleted;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Log'
        ),

        actions: [
          Container(
            width: 95,
            height: 40,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 10.0),
            child: ElevatedButton(
              onPressed: () {
              null;
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.0),
                ),
              ),
              child: const Center(
              child: Text(
                'Save',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                ),
              ),
            ),
            ),
          ),
          Container(
            width: 95,
            height: 40,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 15.0),
            child: ElevatedButton(
              onPressed: () {
                null;
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.0),
                ),
              ),
              child: const Center(
                child: Text(
                  'Edit',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false ,
      body:  Center(
       child: Column(
          children: [
            Container(
              width: 360.0,
              height: 650.0,
              decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       Text(
                        'Title:${note.title}',
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 24,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                     Text(
                        'Date:${note.date}',
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          readOnly: true,
                          style: const TextStyle(
                            fontSize: 24,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Dog Behavior:${note.dog}',
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 24,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Potential Causes:${note.pot}',
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 24,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
