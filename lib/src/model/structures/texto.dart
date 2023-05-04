/* import 'package:sid_d_d/sid_d_d.dart';

class Texto extends ValueLeaf<String> {
  //
  // ===========================
  Texto({
    required super.value,
    required super.what,
  }) : super(failures: validate(value));

  static List<Failure> validate(String v) {
    var f = <Failure>[];
    f.addAll(ValidatorSingleLine().failures(value: v));
    return f;
  }
}
 */