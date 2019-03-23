
import 'package:flutter_mvp_app/Models/CounterModels.dart';
import 'package:flutter_mvp_app/Views/CounterView.dart';

class CounterPresenter {
  void onButtonOneClicked() {}
  set counterView(CounterView value) {}


  void onButtonTwoClicked() {}


}

class BasicCounterPresenter implements CounterPresenter {
  CounterModels _counterViewModel;
  CounterView _counterView;

  BasicCounterPresenter() {
    this._counterViewModel = new CounterModels(0);
  }

  @override
  void onButtonOneClicked() {
    this._counterViewModel.counter++;
    this._counterView.refreshCounter(this._counterViewModel);
  }

  @override
  set counterView(CounterView value) {
    _counterView = value;
    this._counterView.refreshCounter(this._counterViewModel);
  }

  @override
  void onButtonTwoClicked() {
    this._counterViewModel.counter + 10;
    this._counterView.refreshCounter(this._counterViewModel);

  }


}