// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:blue_wing_wms/src/app/auth/models/user_model.dart';
import 'package:blue_wing_wms/src/app/providers/user_provider.dart';
import 'package:blue_wing_wms/src/app/replenishment/views/reple_dashboard.dart';

class Options extends StatelessWidget {
  Options({super.key});

  final List<Map> optionsList = [
    {
      'id': '1',
      'title': 'let down',
    },
    {
      'id': '2',
      'title': 'Cycle Count',
    },
  ];

  @override
  Widget build(BuildContext context) {
    User user = Provider.of<UserProvider>(context).getUser;

    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 120,
            // childAspectRatio: 5 / 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: optionsList.length,
        itemBuilder: (_, index) {
          return OpionsIteam(
            title: optionsList[index]['title'],
          );
        },
      ),
    );
  }
}

class OpionsIteam extends StatelessWidget {
  final String title;

  OpionsIteam({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const RepleDashboard()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 241, 163),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_tree_outlined),
            Text(title),
          ],
        )),
      ),
    );
  }
}
