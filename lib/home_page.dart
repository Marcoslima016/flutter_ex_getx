import 'dart:ffi';

import 'package:exemplo_xdomapa/home_page_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomePageLogic logic;

  _MyHomePageState({
    this.logic,
  }) {
    logic = HomePageLogic();
  }

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
              'You have pushed the button this many times:',
            ),
            Obx(() {
              return Text(
                logic.counter.toString(),
                style: Theme.of(context).textTheme.headline4,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          FloatButton(
            logic: logic,
          ),
          FloatButton(
            logic: logic,
          ),
        ],
      ),
    );
  }
}

class FloatButton extends StatelessWidget {
  FloatButton({
    @required this.logic,
  });

  HomePageLogic logic;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: logic.incrementCounter,
      tooltip: 'Increment',
      child: Icon(Icons.add),
      backgroundColor: Colors.blue,
    );
  }
}
