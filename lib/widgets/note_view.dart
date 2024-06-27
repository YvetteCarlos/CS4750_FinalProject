import 'package:dogcipher/models/note_model.dart';
import 'package:flutter/material.dart';

class NoteView extends StatefulWidget {
  const NoteView(
      {super.key, required this.note, required this.index, required this.onNoteDeleted, required this.onNoteUpdated});

  final Note note;
  final int index;
  final Function(int) onNoteDeleted;
  final Function(int, Note) onNoteUpdated;

  @override
  _NoteViewState createState() => _NoteViewState();
}

  class _NoteViewState extends State<NoteView>{
    late TextEditingController _titleController;
    late TextEditingController _dateController;
    late TextEditingController _dogController;
    late TextEditingController _potController;
    bool _isEditing = false;

  @override
  void initState(){
    super.initState();
    _titleController = TextEditingController(text: widget.note.title);
    _dateController = TextEditingController(text: widget.note.date);
    _dogController = TextEditingController(text: widget.note.dog);
    _potController = TextEditingController(text: widget.note.pot);
  }

  @override
  void dispose(){
    _titleController.dispose();
    _dateController.dispose();
    _dogController.dispose();
    _potController.dispose();
    super.dispose();

  }

  void _saveChanges(){
    setState(() {
      Note updatedNote = Note(
        title: _titleController.text,
        date: _dateController.text,
        dog: _dogController.text,
        pot: _potController.text,
      );
      widget.onNoteUpdated(widget.index, updatedNote);
      Navigator.of(context).pop();
    });
  }

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
              _saveChanges();
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
                setState(() {
                  _isEditing = !_isEditing;
                });
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
                       const Text(
                        'Title:',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                         Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top:25.0),
                            child: TextFormField(
                              controller: _titleController,
                              style: const TextStyle(
                                fontSize: 24,
                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              maxLength: 25,
                              enabled: _isEditing,
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
                        child: Container(
                          margin: const EdgeInsets.only(top:25.0),
                          child: TextFormField(
                            controller: _dateController,
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                            maxLength: 25,
                              enabled: _isEditing,
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
                        child: Container(
                          margin: const EdgeInsets.only(top:25.0),
                          child: TextFormField(
                            controller: _dogController,
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                            maxLength: 25,
                            enabled: _isEditing,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'Causes:',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(top:25.0),
                          child: TextFormField(
                            controller: _potController,
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                            maxLength: 25,
                            enabled: _isEditing,
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
