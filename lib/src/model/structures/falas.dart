import 'package:sid_d_d/sid_d_d.dart';
//
import 'fala.dart';

class Falas extends ValueTree {
  //
  // ===========================
  Falas._({
    required super.values,
    required super.what,
  });

  factory Falas.cria({
    required List<Map> falas,
  }) {
    var lista = <Value>[];
    for (var fala in falas) {
      lista.add(Fala.cria(fala: fala));
    }
    return Falas._(what: 'falas', values: lista);
  }
}
