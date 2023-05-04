/* import 'package:sid_d_d/sid_d_d.dart';
//
import 'item.dart';

class Pauta extends ValueTree {
  //
  // ===========================
  Pauta._({
    required super.values,
    required super.what,
  });

  factory Pauta.cria({
    required List<Map> pauta,
  }) {
    var lista = <Value>[];
    for (var item in pauta) {
      lista.add(Item.cria(item: item));
    }
    return Pauta._(what: 'pauta', values: lista);
  }
}
 */