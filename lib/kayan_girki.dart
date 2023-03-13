import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'kalolin_abinci.dart';

class KayanGirki extends StatefulWidget {
  final Girkegirke girkegirke;

  const KayanGirki({
      Key? key,
      required this.girkegirke,
  }): super(key: key);

  @override
  _KayanGirkiState createState(){
    return _KayanGirkiState();
  }
}

class _KayanGirkiState extends State<KayanGirki>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.girkegirke.sunanAbinci),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height:303,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.girkegirke.hotonAbinciUrl),),
            ),
            const SizedBox(height:5),
            Text(
              widget.girkegirke.sunanAbinci,
              style: const TextStyle( fontSize: 19.0)
            ),
            Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(7.0),
                  itemCount: widget.girkegirke.kayanHadi.length,
                  itemBuilder: (BuildContext context, int index){
                    final kayanHadede = widget.girkegirke.kayanHadi[index];
                    return Text(
                        '${kayanHadede.gudaNawa} ${kayanHadede.aunawa} ${kayanHadede.sunanKayanHadi}',
                        style: const TextStyle(
                          fontSize: 19
                        )
                    );
                  },
                ),
            ),
            //TODO: add share button here
          ]
        )
      ),
    );
  }

}