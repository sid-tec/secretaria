/* import 'package:sid_d_d/sid_d_d.dart';

import 'servidores.dart';
import 'texto.dart';
import 'votos.dart';
//

class Fala extends ValueTree {
  //
  // ===========================
  Fala._({
    required super.values,
    required super.what,
  });

  factory Fala.cria({
    required Map fala,
  }) {
    var lista = <Value>[];
    for (var entrie in fala.entries) {
      switch (entrie.key) {
        case 'texto':
          lista.add(Texto(what: 'texto', value: entrie.value));
          break;
        case 'quem':
          lista.add(Servidores.cria(servs: entrie.value, what: 'quem'));
          break;
        case 'votos':
          lista.add(Votos(value: entrie.value));
          break;
        default:
      }
    }
    return Fala._(values: lista, what: 'fala');
  }
}
 */