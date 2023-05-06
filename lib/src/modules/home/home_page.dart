import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modulars/src/repositories/pessoa/pessoa_repository.dart';

class HomePage extends StatelessWidget {

  const HomePage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('HomePage'),),
           body: Center(child: ElevatedButton(
            onPressed: (){
              context.read<IPessoaRepository>();
            },
            child: const Text('oi'),
           )),
       );
  }
}