import 'interfaces/i_servidor.dart';

abstract class Helper {
  //
  // ==============================
  static String tipoReuniao(
    bool ordinaria, {
    bool smallCaps = false,
  }) =>
      ordinaria
          ? '${smallCaps ? 'o' : 'O'}rdinária'
          : '${smallCaps ? 'e' : 'E'}xtraodinária';

  //
  // ==============================
  static String quemTexto({
    required Iterable<IServidor> servidores,
  }) {
    var soMulher = servidores.fold(
        true, (previousValue, element) => previousValue && !element.masculino);
    var pronome = soMulher ? 'a' : 'o';
    pronome += servidores.length > 1 ? 's' : '';

    return pronome;
  }

  //
  // ==============================
  static String concatena({
    required Iterable<IServidor> servidores,
    bool siape = false,
    bool pontoFinal = false,
/*     bool todos = true,
    bool soProfessor = true */
  }) {
    var retorno = '';
    var penultimo = 0;
    var last = servidores.length;
    for (var serv in servidores) {
      penultimo++;
      retorno += serv.nome;
      retorno += siape ? ', SIAPE ${serv.siape}' : '';
      if (last == 1) {
        retorno += pontoFinal ? '. ' : ', ';
      } else {
        if (penultimo == last - 1) {
          retorno += ' e ';
        } else {
          retorno += pontoFinal && serv == servidores.last ? '. ' : ', ';
        }
      }
    }
    return retorno;
  }

  // ==============================

  static String dataHorario(String dataString) {
    var data = DateTime.parse(dataString);

    var r = 'dia ${dias[data.day]} ';
    r += 'de ${meses[data.month]} ';
    r += 'de ${data.year}, ${semana[data.weekday]}, ';
    r += 'às ${data.hour} horas';
    r += data.minute > 0 ? ' e ${data.minute} minutos' : '';
    return r;
  }

  static const dias = {
    1: 'Primeiro',
    2: 'dois',
    3: 'três',
    4: 'quadro',
    5: 'cinco',
    6: 'seis',
    7: 'sete',
    8: 'oito',
    9: 'nove',
    10: 'dez',
    11: 'onze',
    12: 'doze',
    13: 'treze',
    14: 'quatorze',
    15: 'quinze',
    16: 'dezesseis',
    17: 'dezessete',
    18: 'dezoito',
    19: 'dezenove',
    20: 'vinte',
    21: 'vinte e um',
    22: 'vinte e dois',
    23: 'vinte e três',
    24: 'vinte e quatro',
    25: 'vinte e cinco',
    26: 'vinte e seis',
    27: 'vinte e sete',
    28: 'vinte e oito',
    29: 'vinte e nove',
    30: 'trinta',
    31: 'trinta e um',
  };

  static const meses = {
    1: 'janeiro',
    2: 'fevereiro',
    3: 'março',
    4: 'abril',
    5: 'maio',
    6: 'junho',
    7: 'julho',
    8: 'agosto',
    9: 'setembro',
    10: 'outubro',
    11: 'novembro',
    12: 'dezembro',
  };

  static const semana = {
    1: 'segunda-feira',
    2: 'terça-feira',
    3: 'quarta-feira',
    4: 'quinta-feira',
    5: 'sexta-feira',
  };
}
