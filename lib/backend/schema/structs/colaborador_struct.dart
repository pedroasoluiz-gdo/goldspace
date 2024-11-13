// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ColaboradorStruct extends BaseStruct {
  ColaboradorStruct({
    int? id,
    String? nome,
    String? cpf,
    bool? ativo,
    DateTime? admissao,
    DateTime? demissao,
    String? contrato,
    String? sexo,
    String? cidade,
    String? empresa,
    String? setor,
    String? cargo,
    String? gestor,
    String? usuario,
    EnderecoStruct? endereco,
    List<CelularStruct>? celular,
    EmailStruct? email,
  })  : _id = id,
        _nome = nome,
        _cpf = cpf,
        _ativo = ativo,
        _admissao = admissao,
        _demissao = demissao,
        _contrato = contrato,
        _sexo = sexo,
        _cidade = cidade,
        _empresa = empresa,
        _setor = setor,
        _cargo = cargo,
        _gestor = gestor,
        _usuario = usuario,
        _endereco = endereco,
        _celular = celular,
        _email = email;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  set cpf(String? val) => _cpf = val;

  bool hasCpf() => _cpf != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  set ativo(bool? val) => _ativo = val;

  bool hasAtivo() => _ativo != null;

  // "admissao" field.
  DateTime? _admissao;
  DateTime? get admissao => _admissao;
  set admissao(DateTime? val) => _admissao = val;

  bool hasAdmissao() => _admissao != null;

  // "demissao" field.
  DateTime? _demissao;
  DateTime? get demissao => _demissao;
  set demissao(DateTime? val) => _demissao = val;

  bool hasDemissao() => _demissao != null;

  // "contrato" field.
  String? _contrato;
  String get contrato => _contrato ?? '';
  set contrato(String? val) => _contrato = val;

  bool hasContrato() => _contrato != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  set sexo(String? val) => _sexo = val;

  bool hasSexo() => _sexo != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  set cidade(String? val) => _cidade = val;

  bool hasCidade() => _cidade != null;

  // "empresa" field.
  String? _empresa;
  String get empresa => _empresa ?? '';
  set empresa(String? val) => _empresa = val;

  bool hasEmpresa() => _empresa != null;

  // "setor" field.
  String? _setor;
  String get setor => _setor ?? '';
  set setor(String? val) => _setor = val;

  bool hasSetor() => _setor != null;

  // "cargo" field.
  String? _cargo;
  String get cargo => _cargo ?? '';
  set cargo(String? val) => _cargo = val;

  bool hasCargo() => _cargo != null;

  // "gestor" field.
  String? _gestor;
  String get gestor => _gestor ?? '';
  set gestor(String? val) => _gestor = val;

  bool hasGestor() => _gestor != null;

  // "usuario" field.
  String? _usuario;
  String get usuario => _usuario ?? '';
  set usuario(String? val) => _usuario = val;

  bool hasUsuario() => _usuario != null;

  // "endereco" field.
  EnderecoStruct? _endereco;
  EnderecoStruct get endereco => _endereco ?? EnderecoStruct();
  set endereco(EnderecoStruct? val) => _endereco = val;

  void updateEndereco(Function(EnderecoStruct) updateFn) {
    updateFn(_endereco ??= EnderecoStruct());
  }

  bool hasEndereco() => _endereco != null;

  // "celular" field.
  List<CelularStruct>? _celular;
  List<CelularStruct> get celular => _celular ?? const [];
  set celular(List<CelularStruct>? val) => _celular = val;

  void updateCelular(Function(List<CelularStruct>) updateFn) {
    updateFn(_celular ??= []);
  }

  bool hasCelular() => _celular != null;

  // "email" field.
  EmailStruct? _email;
  EmailStruct get email => _email ?? EmailStruct();
  set email(EmailStruct? val) => _email = val;

  void updateEmail(Function(EmailStruct) updateFn) {
    updateFn(_email ??= EmailStruct());
  }

  bool hasEmail() => _email != null;

  static ColaboradorStruct fromMap(Map<String, dynamic> data) =>
      ColaboradorStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        cpf: data['cpf'] as String?,
        ativo: data['ativo'] as bool?,
        admissao: data['admissao'] as DateTime?,
        demissao: data['demissao'] as DateTime?,
        contrato: data['contrato'] as String?,
        sexo: data['sexo'] as String?,
        cidade: data['cidade'] as String?,
        empresa: data['empresa'] as String?,
        setor: data['setor'] as String?,
        cargo: data['cargo'] as String?,
        gestor: data['gestor'] as String?,
        usuario: data['usuario'] as String?,
        endereco: EnderecoStruct.maybeFromMap(data['endereco']),
        celular: getStructList(
          data['celular'],
          CelularStruct.fromMap,
        ),
        email: EmailStruct.maybeFromMap(data['email']),
      );

  static ColaboradorStruct? maybeFromMap(dynamic data) => data is Map
      ? ColaboradorStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'cpf': _cpf,
        'ativo': _ativo,
        'admissao': _admissao,
        'demissao': _demissao,
        'contrato': _contrato,
        'sexo': _sexo,
        'cidade': _cidade,
        'empresa': _empresa,
        'setor': _setor,
        'cargo': _cargo,
        'gestor': _gestor,
        'usuario': _usuario,
        'endereco': _endereco?.toMap(),
        'celular': _celular?.map((e) => e.toMap()).toList(),
        'email': _email?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'cpf': serializeParam(
          _cpf,
          ParamType.String,
        ),
        'ativo': serializeParam(
          _ativo,
          ParamType.bool,
        ),
        'admissao': serializeParam(
          _admissao,
          ParamType.DateTime,
        ),
        'demissao': serializeParam(
          _demissao,
          ParamType.DateTime,
        ),
        'contrato': serializeParam(
          _contrato,
          ParamType.String,
        ),
        'sexo': serializeParam(
          _sexo,
          ParamType.String,
        ),
        'cidade': serializeParam(
          _cidade,
          ParamType.String,
        ),
        'empresa': serializeParam(
          _empresa,
          ParamType.String,
        ),
        'setor': serializeParam(
          _setor,
          ParamType.String,
        ),
        'cargo': serializeParam(
          _cargo,
          ParamType.String,
        ),
        'gestor': serializeParam(
          _gestor,
          ParamType.String,
        ),
        'usuario': serializeParam(
          _usuario,
          ParamType.String,
        ),
        'endereco': serializeParam(
          _endereco,
          ParamType.DataStruct,
        ),
        'celular': serializeParam(
          _celular,
          ParamType.DataStruct,
          isList: true,
        ),
        'email': serializeParam(
          _email,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ColaboradorStruct fromSerializableMap(Map<String, dynamic> data) =>
      ColaboradorStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        cpf: deserializeParam(
          data['cpf'],
          ParamType.String,
          false,
        ),
        ativo: deserializeParam(
          data['ativo'],
          ParamType.bool,
          false,
        ),
        admissao: deserializeParam(
          data['admissao'],
          ParamType.DateTime,
          false,
        ),
        demissao: deserializeParam(
          data['demissao'],
          ParamType.DateTime,
          false,
        ),
        contrato: deserializeParam(
          data['contrato'],
          ParamType.String,
          false,
        ),
        sexo: deserializeParam(
          data['sexo'],
          ParamType.String,
          false,
        ),
        cidade: deserializeParam(
          data['cidade'],
          ParamType.String,
          false,
        ),
        empresa: deserializeParam(
          data['empresa'],
          ParamType.String,
          false,
        ),
        setor: deserializeParam(
          data['setor'],
          ParamType.String,
          false,
        ),
        cargo: deserializeParam(
          data['cargo'],
          ParamType.String,
          false,
        ),
        gestor: deserializeParam(
          data['gestor'],
          ParamType.String,
          false,
        ),
        usuario: deserializeParam(
          data['usuario'],
          ParamType.String,
          false,
        ),
        endereco: deserializeStructParam(
          data['endereco'],
          ParamType.DataStruct,
          false,
          structBuilder: EnderecoStruct.fromSerializableMap,
        ),
        celular: deserializeStructParam<CelularStruct>(
          data['celular'],
          ParamType.DataStruct,
          true,
          structBuilder: CelularStruct.fromSerializableMap,
        ),
        email: deserializeStructParam(
          data['email'],
          ParamType.DataStruct,
          false,
          structBuilder: EmailStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ColaboradorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ColaboradorStruct &&
        id == other.id &&
        nome == other.nome &&
        cpf == other.cpf &&
        ativo == other.ativo &&
        admissao == other.admissao &&
        demissao == other.demissao &&
        contrato == other.contrato &&
        sexo == other.sexo &&
        cidade == other.cidade &&
        empresa == other.empresa &&
        setor == other.setor &&
        cargo == other.cargo &&
        gestor == other.gestor &&
        usuario == other.usuario &&
        endereco == other.endereco &&
        listEquality.equals(celular, other.celular) &&
        email == other.email;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nome,
        cpf,
        ativo,
        admissao,
        demissao,
        contrato,
        sexo,
        cidade,
        empresa,
        setor,
        cargo,
        gestor,
        usuario,
        endereco,
        celular,
        email
      ]);
}

ColaboradorStruct createColaboradorStruct({
  int? id,
  String? nome,
  String? cpf,
  bool? ativo,
  DateTime? admissao,
  DateTime? demissao,
  String? contrato,
  String? sexo,
  String? cidade,
  String? empresa,
  String? setor,
  String? cargo,
  String? gestor,
  String? usuario,
  EnderecoStruct? endereco,
  EmailStruct? email,
}) =>
    ColaboradorStruct(
      id: id,
      nome: nome,
      cpf: cpf,
      ativo: ativo,
      admissao: admissao,
      demissao: demissao,
      contrato: contrato,
      sexo: sexo,
      cidade: cidade,
      empresa: empresa,
      setor: setor,
      cargo: cargo,
      gestor: gestor,
      usuario: usuario,
      endereco: endereco ?? EnderecoStruct(),
      email: email ?? EmailStruct(),
    );
