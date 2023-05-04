/* import 'package:sid_d_d/sid_d_d.dart';

class Votos extends ValueLeaf<List<int>> {
  //
  // ===========================
  Votos({
    required super.value,
  }) : super(failures: validate(value), what: 'votos');

  static List<Failure> validate(List<int> votos) {
    var f = <Failure>[];
    for (var voto in votos) {
      f.addAll(ValidatorPositive().failures(value: voto));
    }
    return f;
  }
}
 */