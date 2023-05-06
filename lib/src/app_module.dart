import 'package:flutter_modular/flutter_modular.dart';
import 'package:modulars/src/modules/home/home_module.dart';
import 'package:modulars/src/modules/home/home_page.dart';
import 'package:modulars/src/modules/login/login_module.dart';

class AppModule extends Module {
  //!Toda parte de gerenciamento de dependencia
  @override
  List<Bind<Object>> get binds => [];

  //!Rotas
  @override
  List<ModularRoute> get routes => [
        // ChildRoute(
        //   '/',
        //   child: ((context, args) => const HomePage()),
        // )
        //!Enviando a rota para um 'module'
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/login', module: LoginModule())
      ];
}
