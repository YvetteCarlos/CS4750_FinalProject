import 'package:dogcipher/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MySplashPage(title: 'Dogcipher Splash Page'),
    );
  }
}

class MySplashPage extends StatefulWidget {
  const MySplashPage({super.key, required this.title});

  final String title;

  @override
  State<MySplashPage> createState() => _MySplashPageState();
}

class _MySplashPageState extends State<MySplashPage> with SingleTickerProviderStateMixin{
 @override
 void initState(){
   super.initState();
   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);


   Future.delayed(const Duration(seconds: 3),(){
     Navigator.of(context).pushReplacement(MaterialPageRoute(
         builder: (_) =>  const MyWelcomePage(title: 'welcome page'),
         ),
     );
   });
 }

 @override
 void dispose(){
   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
   overlays : SystemUiOverlay.values);
   super.dispose();
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: const Text(
                'DOGCIPHER',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.cyan
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
