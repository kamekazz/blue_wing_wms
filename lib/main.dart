import 'package:blue_winged_wms/src/constants/colors.dart';
import 'package:blue_winged_wms/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blue Winged',
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Image(
              image: AssetImage('assets/logo/Supplyhouse_logo.png'))),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Text(
                'Heading',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                'Sub-heading',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                'Paragraph',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              ElevatedButton(
                  onPressed: () {}, child: const Text('Elevated Button')),
              OutlinedButton(
                  onPressed: () {}, child: const Text('Outlined Butto n')),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Image(
                    image: AssetImage('assets/logo/Supplyhouse_logo.png')),
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
