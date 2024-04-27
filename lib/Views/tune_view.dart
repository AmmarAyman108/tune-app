import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:tune_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.blue, sound: 'note1.wav'),
    TuneModel(color: Colors.redAccent, sound: 'note2.wav'),
    TuneModel(color: Colors.yellowAccent, sound: 'note3.wav'),
    TuneModel(color: Colors.tealAccent, sound: 'note4.wav'),
    TuneModel(color: Color.fromARGB(255, 5, 131, 70), sound: 'note5.wav'),
    TuneModel(color: Colors.pink, sound: 'note6.wav'),
    TuneModel(color: Color(0xff9C27B0), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tune'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 28, 50, 29),
      ),
      body: Column(children: tunes.map((e) => TuneItem(item: e)).toList()),
    );
  }
}