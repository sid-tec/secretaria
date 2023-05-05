//
import '../interfaces/i_reuniao.dart';
import '../interfaces/i_item.dart';
import '../interfaces/i_servidor.dart';
import '../reuniao_helper.dart';
import '../structures/item.dart';
import '../../repository/dados_servidores.dart';

class Reuniao implements IReuniao {
  //
  // ===========================
  final Map _values;
  final IServidor _presidente;
  final List<IItem> _pauta;
  final List<IServidor> _presentes;
  final List<IServidor> _justificaram;

  Reuniao._(this._values, this._presidente, this._pauta, this._presentes,
      this._justificaram);

  factory Reuniao.cria(Map values) {
    var presidente = DadosServidores.cria([values['presidente']]).first;
    var presentes = DadosServidores.cria(values['presentes']);
    var justificaram = DadosServidores.cria(values['justificaram']);
    var pauta = <IItem>[];
    for (var item in values['pauta'] ?? []) {
      pauta.add(Item.cria(item));
    }
    return Reuniao._(values, presidente, pauta, presentes, justificaram);
  }

  @override
  String get numero => _values['numero'].toString();
  //
  @override
  String get aprovada => _values['aprovada'] > 0
      ? 'Aprovada na ${_values['aprovada']}ª RO.'
      : 'Ainda para aprovação, versão de ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}.';
  //
  @override
  String get aprovadaFileName => _values['aprovada'] > 0
      ? 'Aprovada na ${_values['aprovada']} R${tipoReuniao.substring(1)}'
      : 'Ainda por aprovar';
  //
  @override
  String get tipoReuniao => ReuniaoHelper.tipoReuniao(_values['ordinaria']);
  //
  @override
  String get local => _values['local'];
  //
  @override
  String get dataSimples {
    var date = DateTime.parse(_values['data']);
    return '${date.day}/${date.month}/${date.year}';
  }

  @override
  String get dataFileName {
    var date = DateTime.parse(_values['data']);
    var mes = ReuniaoHelper.meses[date.month];
    return 'em $mes de ${date.year}';
  }

  //
  @override
  String get dataCompleta => ReuniaoHelper.dataCompleta(_values['data']);

  //=> DateTime(int.parse());
  //
  @override
  IServidor get presidente => _presidente;
  //
  @override
  List<IServidor> get presentes => _presentes;
  //
  @override
  List<IServidor> get justificaram => _justificaram;
  @override
  List<IItem> get pauta => _pauta;
}
