import 'package:flutter/material.dart';

class FirstList extends StatelessWidget {
  final List mainList = [
    "a",
    "b",
    "c",
    "d",
    "e",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("一覧1"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: mainList.length,
          itemBuilder: (context, int index) {
            return Container(
              padding: EdgeInsets.all(7),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey),
                ),
              ),
              child: ListTile(
                title: Text(
                  mainList[index],
                  style: TextStyle(fontSize: 25),
                ),
              ),
            );
          }),
    );
  }
}

class SubList extends StatelessWidget {
  final List subList = [
    "あ",
    "い",
    "う",
    "え",
    "お",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("一覧2"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: subList.length,
          itemBuilder: (context, int index) {
            return Container(
              padding: EdgeInsets.all(7),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey),
                ),
              ),
              child: ListTile(
                title: Text(
                  subList[index],
                  style: TextStyle(fontSize: 25),
                ),
              ),
            );
          }),
    );
  }
}
