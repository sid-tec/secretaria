import 'package:sid_d_d/sid_d_d.dart';
//
import 'servidor.dart';

class Servidores extends ValueTree {
  //
  // ===========================
  Servidores._({
    required super.values,
    required super.what,
  });

  factory Servidores.cria({
    required String what,
    required List<String> servs,
  }) {
    var lista = <Value>[];
    for (var s in servs) {
      lista.add(Servidor(value: s, what: what));
    }
    return Servidores._(what: what, values: lista);
  }
}
