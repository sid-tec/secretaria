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