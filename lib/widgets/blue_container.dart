import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/radii_model.dart';

class BlueContainer extends StatelessWidget {
  const BlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<RadiiModel>(
      builder: (context, model, child) {
        return Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: model.borderRadius,
          ),
        );
      },
    );
  }
}