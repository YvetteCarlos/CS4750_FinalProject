import 'package:flutter/material.dart';


class EditNotePage extends StatefulWidget {
  const EditNotePage({super.key, required this.title});


  final String title;

  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
    /*  appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.primary,

        title: Text(widget.title),
      ),*/
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have push the button this many times:',
            ),
          ],
        ),
      ),
     /* floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), */// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
