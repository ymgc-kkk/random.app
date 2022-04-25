import 'package:flutter/material.dart';
import 'dart:math';
import 'list.dart';

class Mini extends StatefulWidget {
  @override
  _MiniState createState() => _MiniState();
}

class _MiniState extends State<Mini> {
  final List<Tab> _tab = <Tab>[
    Tab(
      text: "　　 　一覧1　　 　",
      icon: Icon(Icons.fastfood_rounded),
    ),
    Tab(
      text: "　 　　一覧2　　 　",
      icon: Icon(
        Icons.wine_bar,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tab.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue,
          title: Text(
            'テスト',
            style: TextStyle(color: Colors.grey[100]),
          ),
          centerTitle: true,
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              color: Colors.white,
            ),
            tabs: _tab,
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                    title: Text(
                      "一覧1",
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FirstList()));
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "一覧2",
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SubList()));
                  },
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[TabPageA(), TabPageB()],
        ),
      ),
    );
  }
}

class TabPageA extends StatelessWidget {
  final List mainList = [
    "a",
    "b",
    "c",
    "d",
    "e",
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
          ),
          Builder(
            builder: (context) => SizedBox(
              width: 130,
              height: 50,
              child: RaisedButton(
                child: Text("test"),
                elevation: 16,
                color: Colors.blue,
                onPressed: () {
                  var rand = Random();
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "厳正なる審査の結果・・・ " +
                            mainList[rand.nextInt(mainList.length)],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabPageB extends StatelessWidget {
  final List subList = [
    "あ",
    "い",
    "う",
    "え",
    "お",
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
          ),
          Builder(
            builder: (context) => SizedBox(
              width: 130,
              height: 50,
              child: RaisedButton(
                child: Text("test"),
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  var rand = Random();
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        "厳正なる審査の結果・・・ " + subList[rand.nextInt(subList.length)],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
