import 'package:flutter/material.dart';
import 'package:flutter_clickable/layout_fixed.dart';
import 'package:flutter_clickable/layout_issues.dart';

//Begining of Flutter execution
void main() {
  runApp(const MyApp());
}

//Root level Material App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Click',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

//Home Page
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => showInfo(context),
            icon: const Icon(Icons.info_outline),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Splash effect,\nthe right way!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 64.0),
              //Layout with issues
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LayoutIssuesPage()));
                },
                color: Colors.red,
                child: const Text(
                  'Layout with issues',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              //Layout with fixes
              MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LayoutFixedPage()));
                },
                color: Colors.blue,
                child: const Text(
                  'Layout fixed',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  showInfo(BuildContext context) {
    showAboutDialog(
      context: context,
      applicationIcon: const FlutterLogo(),
      children: [
        const Text('https://codexdev.net'),
      ],
    );
  }
}
