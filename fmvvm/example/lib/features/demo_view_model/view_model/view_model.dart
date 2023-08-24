import 'package:fmvvm/core_fmvvm.dart';
import 'package:fmvvm/fmvvm.dart';

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
