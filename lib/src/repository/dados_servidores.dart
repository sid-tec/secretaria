import '../model/interfaces/i_servidor.dart';

enum DadosServidores implements IServidor {
  airt(
    key: 'airt',
    professor: true,
    aposentado: false,
    nome: "Airton Bodstein de Barros",
    curto: "Airton",
    siape: "306380-1",
    cpf: "",
    email: "bodstein@vm.uff.br",
    sala: "Non si sá",
    masculino: true,
  ),
  camb(
    key: 'camb',
    professor: true,
    aposentado: false,
    nome: "Odivaldo Cambraia Alves",
    curto: "Odivaldo",
    siape: "699056-3",
    cpf: "23639628268",
    email: "odivaldocambraia@id.uff.br",
    sala: "309",
    masculino: true,
  ),
  carl(
    key: 'carl',
    professor: true,
    aposentado: false,
    nome: "Carlos Andres Ortiz Bravo",
    curto: "Carlos Ortiz",
    siape: "2285915",
    cpf: "",
    email: "carlosortiz@id.uff.br",
    sala: "511",
    masculino: true,
  ),
  caue(
    key: 'caue',
    professor: true,
    aposentado: false,
    nome: "Cauê Torres de Oliveira Guedes Costa",
    curto: "Cauê",
    siape: "119388-9",
    cpf: "11610969731",
    email: "cauecosta@id.uff.br",
    sala: "302B",
    masculino: true,
  ),
  edua(
    key: 'edua',
    professor: true,
    aposentado: false,
    nome: "Eduardo Ariel Ponzio",
    curto: "Eduardo",
    siape: "1560291",
    cpf: "",
    email: "eduardoariel@id.uff.br",
    sala: "307A",
    masculino: true,
  ),
  fabi(
    key: 'fabi',
    professor: true,
    aposentado: false,
    nome: "Fabiana Monteiro de Oliveira",
    curto: "Fabiana",
    siape: "1332073",
    cpf: "11198114738",
    email: "fabianaoliveira@id.uff.br",
    sala: "411",
    masculino: false,
  ),
  joao(
    key: 'joao',
    professor: true,
    aposentado: false,
    nome: "João Guilherme Siqueira Monteiro",
    curto: "João Guilherme",
    siape: "138090-2",
    cpf: "12336192764",
    email: "joao_guilherme@id.uff.br",
    sala: "303",
    masculino: true,
  ),
  juli(
    key: 'juli',
    professor: true,
    aposentado: false,
    nome: "Júlio César Martins da Silva",
    curto: "Júlio César",
    siape: "305929-1",
    cpf: "",
    email: "juliocms@id.uff.br",
    sala: "307A",
    masculino: true,
  ),
  kati(
    key: 'kati',
    professor: true,
    aposentado: false,
    nome: "Kátia Zaccur Leal",
    curto: "Kátia",
    siape: "308719-0",
    cpf: "",
    email: "katialeal@id.uff.br",
    sala: "513",
    masculino: false,
  ),
  luca(
    key: 'luca',
    professor: true,
    aposentado: false,
    nome: "Carlos Alberto Lucas",
    curto: "Carlos Alberto",
    siape: "310530-9",
    cpf: "",
    email: "carloslucas@id.uff.br",
    sala: "303",
    masculino: true,
  ),
  luci(
    key: 'luci',
    professor: true,
    aposentado: false,
    nome: "Luciano Tavares da Costa",
    curto: "Luciano",
    siape: "171542-2",
    cpf: "",
    email: "ltcosta@id.uff.br",
    sala: "309",
    masculino: true,
  ),
  luiz(
    key: 'luiz',
    professor: true,
    aposentado: false,
    nome: "Luiz Sérgio Radino Lamego",
    curto: "Luiz Sérgio",
    siape: "310914-2",
    cpf: "",
    email: "luizlamego@id.uff.br",
    sala: "FV 101",
    masculino: true,
  ),
  raph(
    key: 'raph',
    professor: true,
    aposentado: false,
    nome: "Raphael da Costa Cruz",
    curto: "Raphael",
    siape: "253682-1",
    cpf: "",
    email: "rccruz@id.uff.br",
    sala: "515",
    masculino: true,
  ),
  robe(
    key: 'robe',
    professor: true,
    aposentado: false,
    nome: "Roberto Carlos Alvim Cid",
    curto: "Roberto",
    siape: "303590-4",
    cpf: "",
    email: "gfqrcid@vm.uff.br",
    sala: "303",
    masculino: true,
  ),
  rosa(
    key: 'rosa',
    professor: true,
    aposentado: true,
    nome: "Rosana Janot Martins",
    curto: "Rosana",
    siape: "310743-3",
    cpf: "",
    email: "rjanot@id.uff.br",
    sala: "FV 101",
    masculino: false,
  ),
  rose(
    key: 'rose',
    professor: true,
    aposentado: false,
    nome: "Rose Mary Latini Cova",
    curto: "Rose",
    siape: "730739-8",
    cpf: "",
    email: "roselatini@id.uff.br",
    sala: "411",
    masculino: false,
  ),
  soni(
    key: 'soni',
    professor: true,
    aposentado: false,
    nome: "Sonia Regina Alves Nogueira de Sá",
    curto: "Sonia",
    siape: "311646-7",
    cpf: "",
    email: "sranogueiradesa@gmail.com",
    sala: "302A",
    masculino: false,
  ),
  afra(
    key: 'afra',
    professor: false,
    aposentado: false,
    nome: "José Afrânio Brenelli",
    curto: "José",
    siape: "1461790",
    cpf: "",
    email: "jabrenelli@id.uff.br",
    sala: "L205",
    masculino: false,
  ),
  heli(
    key: 'heli',
    professor: false,
    aposentado: false,
    nome: "Hélio Ricardo Xavier Pimentel",
    curto: "Hélio",
    siape: "1072749-2",
    cpf: "",
    email: "heliorxp@gmail.com",
    sala: "L205",
    masculino: false,
  ),
/*   lici(
    key: 'lici',
    professor: false,
    aposentado: false,
    nome: "Liciane Ferreira Plouvier",
    curto: "Liciane",
    siape: "1793483",
    cpf: "",
    email: "liciane13@hotmail.com",
    sala: "L205",
    masculino: false,
  ), */
  sedi(
    key: 'sedi',
    professor: false,
    aposentado: false,
    nome: "Sedinir Consentini de Souza",
    curto: "Sedinir",
    siape: "1971386",
    cpf: "",
    email: "sconsentini@id.uff.br",
    sala: "307",
    masculino: true,
  );

  const DadosServidores({
    required this.key,
    required this.professor,
    required this.aposentado,
    required this.nome,
    required this.curto,
    required this.siape,
    required this.cpf,
    required this.email,
    required this.sala,
    required this.masculino,
  });

  @override
  final String key;
  @override
  final String nome;
  @override
  final String curto;
  @override
  final String siape;
  @override
  final String cpf;
  @override
  final String email;
  @override
  final String sala;
  @override
  final bool masculino;
  @override
  final bool professor;
  @override
  final bool aposentado;

  @override
  String get pronome => masculino ? 'o ' : 'a ';
  @override
  String get titulo => professor
      ? masculino
          ? 'professor '
          : 'professora '
      : masculino
          ? 'tecnico '
          : 'tecnica ';

  static List<IServidor> cria(List<dynamic> keys) {
    final lista = <IServidor>[];
    for (var key in keys) {
      for (var serv in DadosServidores.values) {
        if (key == serv.key.toString()) lista.add(serv);
      }
    }
    return lista;
  }

  static List<String> get nomes {
    final lista = <String>[];
    for (var serv in DadosServidores.values) {
      lista.add(serv.nome);
    }
    return lista;
  }

  static List<String> get nomesCurtos {
    final lista = <String>[];
    for (var serv in DadosServidores.values) {
      lista.add(serv.curto);
    }
    return lista;
  }

  static List<String> get keys {
    final lista = <String>[];
    for (var serv in DadosServidores.values) {
      lista.add(serv.key);
    }
    return lista;
  }

  static Iterable<IServidor> profs(List<IServidor> servidores) =>
      servidores.where((p) => p.professor);

  static Iterable<IServidor> tecns(List<IServidor> servidores) =>
      servidores.where((p) => !p.professor);

  static Iterable<String> listaCSV(
      {bool tambemServidores = true, bool tambemAposentados = false}) {
    final lista = <String>[];
    for (var serv in DadosServidores.values) {
      if (tambemServidores || serv.professor) {
        if (tambemAposentados || !serv.aposentado) {
          var v =
              '${DadosServidores.seEProfessor(serv.professor)},${serv.nome},${serv.email}';
          lista.add(v);
        }
      }
    }
    return lista;
  }

  static String seEProfessor(bool seSim) => seSim ? 'Professor' : 'Servidor';
}
