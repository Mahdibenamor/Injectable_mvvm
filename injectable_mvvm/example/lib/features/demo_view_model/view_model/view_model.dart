import 'package:injectable_mvvm/core_injectable_mvvm.dart';
import 'package:injectable_mvvm/injectable_mvvm.dart';

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
