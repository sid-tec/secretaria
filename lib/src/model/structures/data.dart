import 'package:sid_d_d/sid_d_d.dart';

class Data extends ValueLeaf<String> {
  //
  // ===========================
  Data({
    required super.value,
    required super.what,
  }) : super(failures: validate(value));

  static List<Failure> validate(String v) {
    var f = <Failure>[];
    f.addAll(ValidatorDateFormat().failures(value: v));
    if (f.isEmpty) {
      // SE é data valida testa se é data passada
      //f.addAll(ValidatorFunction().failures(value: v));
    }
    return f;
  }
}
