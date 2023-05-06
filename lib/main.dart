import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modulars/src/app_module.dart';
import 'package:modulars/src/app_widget.dart';

void main() {
  //!Aqui no main eu starto com o flutter modular
  runApp(ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  ));
}
