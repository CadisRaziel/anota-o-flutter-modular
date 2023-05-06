//!Classe criada para quando queremos importar binds de um modulo para o outro


import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module{

  @override
  List<Bind<Object>> get binds => [
    //!export: true -> eu preciso passar isso para poder chamar esse bind em outro modulo
    //  Bind.lazySingleton<IPessoaRepository>((i) => PessoaRepositoryImpl(), export: true),
  ]; 
  
}