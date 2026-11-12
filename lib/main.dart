import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/radii_model.dart';
import 'widgets/blue_container.dart';
import 'widgets/radius_section.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => RadiiModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Home Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const BlueContainer(),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 160,
                  child: RadiusSection(
                    title: 'TL',
                    getter: (m) => m.topLeft,
                    setter: (m, v) => m.setTopLeft(v),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 160,
                  child: RadiusSection(
                    title: 'TR',
                    getter: (m) => m.topRight,
                    setter: (m, v) => m.setTopRight(v),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 160,
                  child: RadiusSection(
                    title: 'BL',
                    getter: (m) => m.bottomLeft,
                    setter: (m, v) => m.setBottomLeft(v),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 160,
                  child: RadiusSection(
                    title: 'BR',
                    getter: (m) => m.bottomRight,
                    setter: (m, v) => m.setBottomRight(v),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}