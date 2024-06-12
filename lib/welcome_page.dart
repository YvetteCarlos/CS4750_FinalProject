import 'package:dogcipher/dashboard_page.dart';
import 'package:flutter/material.dart';


class MyWelcomePage extends StatefulWidget {
  const MyWelcomePage({super.key, required this.title});


  final String title;

  @override
  State<MyWelcomePage> createState() => _MyWelcomePageState();
}

class _MyWelcomePageState extends State<MyWelcomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     /* appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.primary,

        title: Text(widget.title),
      ),*/
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
             child: const Text(
              'Welcome to Dogcipher! \n Learn how to better \n understand your furry \n friend!',
              style: TextStyle(
                fontSize: 25,
              ),
              ),
            ),

            Container(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyDashboardPage(title: 'Dashboard')),
                  );
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 25,
                   color: Colors.white
                  ),
              ),
                         /* Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,*/
              /*),*/
              ),
            ),
          ],
        ),
      ),
     /* floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
