import 'package:flutter/material.dart';

class DashboardOptions extends StatelessWidget {
  const DashboardOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          OpionsIteam(),
        ],
      ),
    );
  }
}

class OpionsIteam extends StatelessWidget {
  const OpionsIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 200),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(20),
        child: Center(
            child: Column(
          children: const [
            Icon(Icons.play_arrow),
            Text('Option'),
          ],
        )),
      ),
    );
  }
}
