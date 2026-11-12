import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/radii_model.dart';

class RadiusSection extends StatelessWidget {
  final String title;
  final double Function(RadiiModel) getter;
  final void Function(RadiiModel, double) setter;

  const RadiusSection({
    super.key,
    required this.title,
    required this.getter,
    required this.setter,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<RadiiModel>(
      builder: (context, model, child) {
        final value = getter(model);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$title: ${value.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 13),
            ),
            Slider(
              value: value,
              min: 0,
              max: 75,
              divisions: 150,
              onChanged: (v) => setter(model, v),
            ),
          ],
        );
      },
    );
  }
}