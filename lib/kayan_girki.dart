import 'package:flutter/material.dart';
import 'kalolin_abinci.dart';
import 'package:share_plus/share_plus.dart';

class KayanGirki extends StatefulWidget {
  final Girkegirke girkegirke;

  const KayanGirki({
    Key? key,
    required this.girkegirke,
  }) : super(key: key);

  @override
  _KayanGirkiState createState() {
    return _KayanGirkiState();
  }
}

class _KayanGirkiState extends State<KayanGirki> {

  @override
  Widget build(BuildContext context) {

    final ButtonStyle styleBtn = ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 19.0,
        ),
        foregroundColor: Colors.black
    );

    _onShared(BuildContext context){
      final box = context.findRenderObject() as RenderBox?;
      final kayanHadi = widget.girkegirke.kayanHadi;
      String sunanHadi = '';
      String aunawa = '';
      double nawa = 0;
      Girkegirke girkegirke = widget.girkegirke;

      Share.shareXFiles(
        [XFile(girkegirke.hotonAbinciUrl)],
        text: '${kayanHadi.map((element) =>{
          nawa = element.gudaNawa,
          aunawa = element.aunawa,
          sunanHadi = element.sunanKayanHadi

        } )}',
        subject: widget.girkegirke.sunanAbinci,
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size
      );

    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.girkegirke.sunanAbinci),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Column(
                children: <Widget>[
                  Image(
                    image: ResizeImage(AssetImage(widget.girkegirke.hotonAbinciUrl), height:455),
                  ),
                  const SizedBox(height: 9.0),
                  Text(widget.girkegirke.sunanAbinci,
                      style: const TextStyle(
                          fontSize: 21.0,
                          fontFamily: 'Palatino',
                          fontWeight: FontWeight.w700)),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(7.0),
                      itemCount: widget.girkegirke.kayanHadi.length,
                      itemBuilder: (BuildContext context, int index) {
                        final kayanHadede = widget.girkegirke.kayanHadi[index];
                        return Text(
                            '${kayanHadede.gudaNawa} ${kayanHadede.aunawa} ${kayanHadede.sunanKayanHadi}',
                            style: const TextStyle(fontSize: 19));
                      },
                    ),
                  ),
                  //TODO: add share fucntions here
                  const SizedBox(height: 32.0),
                  Builder(
                    builder: (BuildContext context) {
                      return ElevatedButton(
                        style: styleBtn,
                        onPressed: () => {
                          _onShared(context)
                        },
                        child: const Text('Aika wa aboki'),
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