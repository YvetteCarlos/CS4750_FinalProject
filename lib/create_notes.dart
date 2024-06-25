import 'package:dogcipher/notes_page.dart';
import 'package:dogcipher/models/note_model.dart';
import 'package:flutter/material.dart';

  class MyLogPage extends StatefulWidget {
    const MyLogPage({super.key, required this.onNewNoteCreated});
    final Function(Note) onNewNoteCreated;

  @override
  State<MyLogPage> createState() => _MyLogPageState();
    }

  class _MyLogPageState extends State<MyLogPage> {
      final titleController = TextEditingController();
      final dateController = TextEditingController();
      final dogController = TextEditingController();
      final potController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    dateController.dispose();
    dogController.dispose();
    potController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Log'),
        actions: [
          Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.only(right: 20.0),
            child: ElevatedButton(
              onPressed: () {
                final note = Note(
                  title: titleController.text,
                  date: dateController.text,
                  dog: dogController.text,
                  pot: potController.text,
                );
                widget.onNewNoteCreated(note);
                titleController.clear();
                dateController.clear();
                dogController.clear();
                potController.clear();
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.0),
                ),
              ),
              child: const Text(
                'Add Note',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 360.0,
              height: 650.0,
              decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Title:',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: titleController,
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
                      const Text(
                        'Date:',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: dateController,
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
                      const Text(
                        'Dog Behavior:',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: dogController,
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
                      const Text(
                        'Potential Causes:',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: potController,
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
