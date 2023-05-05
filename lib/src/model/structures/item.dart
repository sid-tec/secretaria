import 'package:secretaria/src/model/structures/fala.dart';
import 'package:secretaria/src/repository/dados_servidores.dart';

import '../interfaces/i_item.dart';
import '../interfaces/i_fala.dart';
import '../interfaces/i_servidor.dart';

class Item implements IItem {
  final String _titulo;
  final String _descricao;
  final IFala _incluido;
  final List<IFala> _falas;
  final List<IServidor> _envolvidos;
  //
  Item._(
    this._titulo,
    this._descricao,
    this._incluido,
    this._falas,
    this._envolvidos,
  );

  factory Item.cria(Map item) {
    var titulo = item['titulo'] ?? '';
    var descricao = item['descricao'] ?? '';
    var incluido = Fala.cria(fala: item['incluido'] ?? {});
    var envolvidos = DadosServidores.cria(item['envolvidos'] ?? []);
    var falas = <IFala>[];
    for (var fala in item['falas']) {
      falas.add(Fala.cria(fala: fala));
    }
    return Item._(titulo, descricao, incluido, falas, envolvidos);
  }

  @override
  String get titulo => _titulo;
  @override
  String get descricao => _descricao;
  @override
  IFala get incluido => _incluido;
  @override
  List<IFala> get falas => _falas;
  @override
  List<IServidor> get envolvidos => _envolvidos;
}



/* import 'package:sid_d_d/sid_d_d.dart';
//
import 'fala.dart';
import 'falas.dart';
import 'servidores.dart';
import 'texto.dart';

class Item extends ValueTree {
  //
  // ===========================
  Item._({
    required super.values,
    required super.what,
  });

  factory Item.cria({
    required Map item,
  }) {
    var lista = <Value>[];
    for (var entrie in item.entries) {
      switch (entrie.key) {
        case 'titulo':
          lista.add(Texto(what: 'titulo', value: entrie.value));
          break;
        case 'descricao':
          lista.add(Texto(what: 'descricao', value: entrie.value));
          break;
        case 'envolvidos':
          lista.add(Servidores.cria(servs: entrie.value, what: 'envolvidos'));
          break;
        case 'incluido':
          lista.add(Fala.cria(fala: entrie.value));
          break;
        case 'falas':
          lista.add(Falas.cria(falas: entrie.value));
          break;
        default:
      }
    }
    return Item._(values: lista, what: 'item');
  }
}
 */