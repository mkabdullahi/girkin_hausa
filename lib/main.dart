import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter/services.dart';

import 'kalolin_abinci.dart';
import 'kayan_girki.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyAbinci());
  FlutterNativeSplash.remove();
}

class MyAbinci extends StatelessWidget {
  const MyAbinci({super.key});


  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Abincin Hausa',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
            primary: Colors.grey,
            secondary: Colors.black
        ),
      ),
      home: const MyHomePage(title: 'Abincin Hausa'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Girkegirke.samfuri.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) {
                          return KayanGirki(girkegirke: Girkegirke.samfuri[index],);
                        }
                    )
                );
              },
              child: buildAbiniciCard(Girkegirke.samfuri[index]),
            );
          },
        ),
      ),
    );
  }
  //AbiniciCard
  Widget buildAbiniciCard(Girkegirke girkegirke) {
    return Card(
      elevation: 1.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9.3)
      ),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          children: <Widget>[
            Image(
                image: ResizeImage(AssetImage(girkegirke.hotonAbinciUrl), width:325, height:295),

            ),
            const SizedBox( height: 9.0),
            Text(
              girkegirke.sunanAbinci,
              style: const TextStyle(
                  fontSize:21.0,
                fontFamily: 'Palatino',
                fontWeight: FontWeight.w700
              )
            ),
          ]
        )
      )
    );
  }
}