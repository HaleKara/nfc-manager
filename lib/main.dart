import 'package:app/view/app.dart';
import 'package:flutter/widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //runappten önce konulur.
  runApp(await App.withDependency());



}
