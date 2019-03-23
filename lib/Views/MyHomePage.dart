import 'package:flutter/material.dart';
import 'package:flutter_mvp_app/Models/CounterModels.dart';
import 'package:flutter_mvp_app/Presenter/CounterPresenter.dart';
import 'package:flutter_mvp_app/Views/CounterView.dart';

class MyHomePage extends StatefulWidget {
  final CounterPresenter presenter;
  final String title;

  MyHomePage(this.presenter, {Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> implements CounterView {
  CounterModels _viewModel;

  @override
  void initState() {
    super.initState();
    this.widget.presenter.counterView = this;
  }

  @override
  void refreshCounter(CounterModels viewModel) {
    setState(() {
      this._viewModel = viewModel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              _viewModel?.counter.toString(),
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => this.widget.presenter.onButtonOneClicked(),
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
