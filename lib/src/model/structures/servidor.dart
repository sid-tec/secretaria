/* import 'package:sid_d_d/sid_d_d.dart';
//
import '../../repository/dados_servidores.dart';

class Servidor extends ValueLeaf<String> {
  //
  // ===========================
  Servidor({
    required super.value,
    required super.what,
  }) : super(failures: validate(value));

  static List<Failure> validate(String v) {
    var f = <Failure>[];
    if (!DadosServidores.keys.contains(v)) {
      f.add(Failure(
          'Failure: Invalid Servidor, Value: $v, Type: ${v.runtimeType}'));
    }
    return f;
  }
}
 */