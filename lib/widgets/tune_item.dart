import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.item});
  final TuneModel item;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: item.color,
          ),
        ),
        onTap: () {
          item.playground();
        },
      ),
    );
  }
}
