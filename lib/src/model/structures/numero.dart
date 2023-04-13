import 'package:sid_d_d/sid_d_d.dart';

class Numero extends ValueLeaf<int> {
  //
  // ===========================
  Numero({
    required super.value,
    required super.what,
  }) : super(failures: validate(value));

  static List<Failure> validate(int v) {
    var f = <Failure>[];
    f.addAll(ValidatorMinValue(min: 550).failures(value: v));
    return f;
  }
}
