import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(XylophoneApp());
}
class XylophoneApp extends StatelessWidget {
  const XylophoneApp
({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor:Colors.black,
        body:SafeArea(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.stretch,
            children:[
              BuildKey(color:Colors.red,fileName:1),
              BuildKey(color:Colors.black,fileName:1),
              BuildKey(color:Colors.purple,fileName:1),
              BuildKey(color:Colors.green,fileName:1),
              BuildKey(color:Colors.orange,fileName:1),

            ]
          )
        )
      )
    );
  }
}

class BuildKey extends StatelessWidget {
  final Color? color;
  final int? fileName;
   BuildKey({
    super.key,
    this.color,
    this.fileName,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:     ElevatedButton(
      onPressed:(){
        
          final player = AudioPlayer();
            player.play(AssetSource('a$fileName.wav'));
        },
      child:Text(''),
      style:ButtonStyle(
        backgroundColor:MaterialStateProperty.all(color),
      )
    )
    );
  }
}
