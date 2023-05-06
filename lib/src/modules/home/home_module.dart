import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modulars/src/modules/home/home_page.dart';
import 'package:modulars/src/repositories/pessoa/pessoa_repository.dart';
import 'package:modulars/src/repositories/pessoa/pessoa_repository_impl.dart';
import 'package:modulars/src/services/buscar_pessoa_service.dart';

//!Dependency injector (binds, exports), elas não precisam estar em ordem
class HomeModule extends Module {
  //?Obs: Podemos importar os minds de outros modulos !! (util para quando temos Repositorys duplicados), eu criei o 'core_module' ai eu pego e importo ele aqui nos binds "CoreModule"
  //? com isso nos nao utilizamos o binds, nos usamos o imports
  @override
  List<Module> get imports => [
        //?Lembrando se eu exporta esse modulo, eu não vou pode instanciar ele aqui dentro no Bind, eu preciso chamar a classe em que eu coloquei ele
        //CoreModule()
        //PessoaModule()
      ];

  @override
  List<Bind> get binds => [
        //? os mais usados são o LazySingleton e Singleton

        //!lazySingleton -> singleton (porém se eu sair do modulo e ir pra outro o flutter mata essa instancia e ao voltar para esse modulo ele cria outra) (vai iniciar na primeira vez que eu chamar ele)
        Bind.lazySingleton<IPessoaRepository>((i) => PessoaRepositoryImpl()),
        Bind.lazySingleton<BuscarPessoaService>((i) => BuscarPessoaService(
            pessoaRepository:
                i())) //! i -> ele vai buscar a instancia do IPessoaRepository que eu coloquei dentro da classe BuscarPessoaService,
        //!e como nós ja definimos acima, é só eu passar o 'i' que ele vai atras de acahr

        //!O bind é difernte do lazy porque, o lazy só starta ele quando entramos no modulo dele(ou seja no PessoaRepositoryImpl)
        //!ja esse bind abaixo ele ao startar o projeto ele ja entra nesse PessoaRepositoryImpl sem eu clicar nesse modulo
        //!é bom pra classes que demoram pra carrega as coisas
        //Bind.singleton<IPessoaRepository>((i) => PessoaRepositoryImpl()),

        //!o bind abaixo vai adicioanr a instancia para adicionar diretamente (ou seja toda vez que eu acessa essa instancia ele pega uma instancia ja existente ou seja não é singleton)
        //Bind.instance<IPessoaRepository>( PessoaRepositoryImpl())

        //!o bind abaixo sempre vai criar uma nova instancia ao entrar no modulo PessoaRepositoryImpl
        //Bind.factory<IPessoaRepository>((i) => PessoaRepositoryImpl())
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ChildRoute('/:id', child: (context, args) => const HomePage()),
      ];
}
