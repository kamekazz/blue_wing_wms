import 'package:flutter/material.dart';

class WaveScreen extends StatelessWidget {
  const WaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wave Picker')),
      body: Center(
        child: Text('wave screen'),
      ),
    );
  }
}
