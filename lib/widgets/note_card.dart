import 'package:dogcipher/models/note_model.dart';
import 'package:dogcipher/widgets/note_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.note, required this.index, required this.onNoteDeleted, required this.onNoteUpdated});
  final Note note;
  final int index;
  final Function(int, Note) onNoteUpdated;
  final Function(int) onNoteDeleted;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => NoteView(note: note, index: index, onNoteDeleted: onNoteDeleted, onNoteUpdated: onNoteUpdated,
          ),
        ));
      },
      child: Container(
        height: 70,
        width: 280,
        margin: const EdgeInsets.only( right: 50.0, left: 50.0),
        child: Card(
          color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1.0),
              side: const BorderSide(color: Colors.black, width:5.0 ),
            ),
            child: Row(
            children: [
              Expanded(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    note.title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,

                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: (){
            showDialog(
            context: context,
          builder: (context){
            return AlertDialog(
              title: const Text(
              'Delete?'
              ),
            content: Text(
            'Note ${note.title} will be deleted.'
              ),
            actions: [
            TextButton(
              onPressed: (){
              Navigator.of(context).pop();
              onNoteDeleted(index);
              },
            child: const Text('Delete'),
          ),
          TextButton(
          onPressed: (){
             Navigator.of(context).pop();
              },
               child: const Text('Cancel'),
                            ),
                         ],
                       );
                     },
                   );
                 },
               ),
             ],
           ),
        ),
      ),
    );
  }
}
