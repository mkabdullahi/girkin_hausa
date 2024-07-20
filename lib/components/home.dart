import 'package:flutter/material.dart';

import 'kalolin_abinci.dart';
import 'kayan_girki.dart';
import 'custom_theme.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TODO: implement screens widgets

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Da dadan Abincin Hausa',
          style: Theme.of(context).textTheme.headline6
        ),
      ),
      //TODO: add bottomNavigationBar
      body: SafeArea(
        child: ListView.builder(
          itemCount: Girkegirke.samfuri.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return KayanGirki(
                    girkegirke: Girkegirke.samfuri[index],
                  );
                }));
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9.3)),
        child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Column(children: <Widget>[
              Image(
                image: ResizeImage(AssetImage(girkegirke.hotonAbinciUrl),
                    width: 325, height: 295),
              ),
              const SizedBox(height: 9.0),
              Text(girkegirke.sunanAbinci,
                  style: const TextStyle(
                      fontSize: 21.0,
                      fontFamily: 'Palatino',
                      fontWeight: FontWeight.w700)),
            ])));
  }
}