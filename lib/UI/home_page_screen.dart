import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController controller = PageController();
  final List<Widget> _list = <Widget>[
    Center(
        child: Pages(
      text: "Page One",
    )),
    Center(
        child: Pages(
      text: "Page Two",
    )),
    Center(
        child: Pages(
      text: "Page Three",
    )),
    Center(
        child: Pages(
      text: "Page Four",
    ))
  ];
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('PageView'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: PageView(
        children: _list,
        scrollDirection: Axis.horizontal,
        // reverse: true,
        // physics: BouncingScrollPhysics(),
        controller: controller,
        onPageChanged: (num) {
          setState(() {
            _curr = num;
          });
        },
      ),
    );
  }
}

class Pages extends StatelessWidget {
  final text;
  Pages({this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),
          ]),
    );
  }
}
