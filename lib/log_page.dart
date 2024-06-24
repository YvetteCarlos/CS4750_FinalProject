import 'package:flutter/material.dart';


class MyLogPage extends StatefulWidget {
  const MyLogPage({super.key, required this.title});

  final String title;

  @override
  State<MyLogPage> createState() => _MyLogPageState();
}

class _MyLogPageState extends State<MyLogPage> {

  final titleController = TextEditingController();
  final bodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,

        title: Text(widget.title),
        actions: [
          Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.only(right: 20.0),
            child: ElevatedButton(
            onPressed: () {
            print('Button pressed');
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
      resizeToAvoidBottomInset: false ,
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
                  const Text(
                    'Date:',
                    style: TextStyle(
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
                  const Text(
                    'Dog Behavior:',
                    style: TextStyle(
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
                  const Text(
                    'Potential Causes:',
                    style: TextStyle(
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
