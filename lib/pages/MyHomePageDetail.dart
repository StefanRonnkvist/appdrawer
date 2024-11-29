import 'package:flutter/material.dart';

class MyHomePageDetail extends StatefulWidget {
  const MyHomePageDetail(
      {super.key, required this.title, required this.listData});

  final String title;
  final String listData;

  @override
  _MyHomePageDetailState createState() => _MyHomePageDetailState();
}

class _MyHomePageDetailState extends State<MyHomePageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.listData,
            ),
          ],
        ),
      ),
    );
  }
}
