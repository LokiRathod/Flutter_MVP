import 'package:flutter/material.dart';
import 'package:flutter_mvp_app/Presenter/CounterPresenter.dart';
import 'package:flutter_mvp_app/Views/MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,

      home:  new MyHomePage(new BasicCounterPresenter(), title: 'Flutter MVP'),
    );
  }
}
