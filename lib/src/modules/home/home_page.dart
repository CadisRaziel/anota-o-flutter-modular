import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modulars/src/repositories/pessoa/pessoa_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
          child: Column(
        children: [
          //!Recuperar parametro pela rota
          //?Alguns exemplos abaixo
          Text(Modular.args.data ?? ""), //!-> Entrar na tela e mandar o objeto inteiro (evitar no flutter web)
          Text(Modular.args.queryParams.toString()),
          Text(Modular.args.params.toString()),
            const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () {
              context.read<IPessoaRepository>();
            },
            child: const Text('oi'),
          ),
        ],
      )),
    );
  }
}
