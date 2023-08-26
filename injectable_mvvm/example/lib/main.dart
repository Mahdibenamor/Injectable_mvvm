import 'package:example/features/demo_view_model/presentation/demo_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable_mvvm/injectable_mvvm.dart';
import 'package:example/injector/injector.config.dart';

GetIt _ioc = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _ioc.init(environment: Environment.dev);
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  const SampleApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoViewPage(),
    );
  }
}
