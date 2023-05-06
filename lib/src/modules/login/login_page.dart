import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                //!navigate -> se tiver 3 telas em stack ele mata todas e deixa só a que ele navega como um removeUntil
                //Modular.to.navigate(path);
                Modular.to.pushNamed("/home",
                    arguments:
                        "Pessoa enviado pelo data"); //!arguments -> Meio mais facil de mandar classes(classe inteira) por completo
              },
              child: const Text('data')),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed("/home/?query=Pessoa%order=id",
                    ); //!-> Muito usado por sites para fazer filtro
              },
              child: const Text('queryParams')),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Modular.to.pushNamed("/home/123",); //! -> Muito usado por sites para fazer filtro
                Modular.to.pushNamed("/home/123/?query=Vitor",); //! -> Muito usado por sites para fazer filtro
              },
              child: const Text('params')),
        ],
      ),
    );
  }
}
