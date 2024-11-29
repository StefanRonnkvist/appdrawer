import 'package:flutter/material.dart';
import '../component/MainDrawer.dart';

class MyAboutPage extends StatefulWidget {
  const MyAboutPage({super.key});

  @override
  State<MyAboutPage> createState() => _MyAboutPageState();
}

class _MyAboutPageState extends State<MyAboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      drawer: const MyDrawer("About"),
    );
  }
}
