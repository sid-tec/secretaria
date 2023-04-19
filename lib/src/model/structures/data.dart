import 'package:sid_d_d/sid_d_d.dart';

class Data extends ValueLeaf<String> {
  //
  // ===========================
  Data({
    required super.value,
    required super.what,
  }) : super(failures: ValidatorPastDateTime().failures(value: value));
}
