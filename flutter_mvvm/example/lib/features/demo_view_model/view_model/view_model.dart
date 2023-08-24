import 'package:flutter_mvvm/core_flutter_mvvm.dart';
import 'package:flutter_mvvm/flutter_mvvm.dart';

@lazySingletonViewModel
class DemoViewModel extends ANavigableViewModel {
  String _text = '';
  String get text => _text;
  set text(String text) {
    _text = text;
    notifyListeners();
  }

  DemoViewModel();
}
