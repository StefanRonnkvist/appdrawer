import 'package:flutter/material.dart';
import '/pages/MyHomePage.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'component/DrawerStateInfo.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <SingleChildWidget>[
        ChangeNotifierProvider<DrawerStateInfo>(
            create: (_) => DrawerStateInfo()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Comity',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: const MyHomePage(
          title: 'App Comity',
          key: Key("Level"),
        ),
      ),
    );
  }
}