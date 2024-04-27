import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  const TuneModel({required this.color, required this.sound});
  final String sound;
  final Color color;
  playground() {
    final play = AudioPlayer();
    play.play(AssetSource(sound));
  }
}
