import 'package:flutter/material.dart';
import 'kalolin_abinci.dart';
import 'package:share_plus/share_plus.dart';

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
    final ButtonStyle styleBtn =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 19.0,), foregroundColor: Colors.black);

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
            const SizedBox(height: 32),
            Builder(
              builder: (BuildContext context) {
                return ElevatedButton(
                  style: styleBtn,
                  onPressed: () =>{
                    Share.share('function to be added')
                  } ,
                  child: const Text('Aika wa aboki'),
                );
              },
            ),

          ]
        )
      ),
    );
  }

}