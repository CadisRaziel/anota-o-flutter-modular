import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {

  const AppWidget({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {

        //!quando o projeto abrir ele vai abrir nessa pagina
        Modular.setInitialRoute('/home');

       return MaterialApp.router(
        title: 'Flutter modular',
        theme: ThemeData(primarySwatch: Colors.blue),
        routeInformationParser: Modular.routeInformationParser, //!-> Dizendo ao flutter que quem vai controla as rotas é o modular
        routerDelegate: Modular.routerDelegate, //!-> Dizendo ao flutter que quem vai controla as rotas é o modular
       );
  }
}