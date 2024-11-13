// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApeStruct extends BaseStruct {
  ApeStruct({
    String? nome,
    int? fkGestor,
    String? gestor,
    int? fkEmpresa,
    String? empresa,
    int? fkCargo,
    String? cargo,
    int? fkColab,
    String? admissao,
    int? periodoape,
    String? vencimento,
  })  : _nome = nome,
        _fkGestor = fkGestor,
        _gestor = gestor,
        _fkEmpresa = fkEmpresa,
        _empresa = empresa,
        _fkCargo = fkCargo,
        _cargo = cargo,
        _fkColab = fkColab,
        _admissao = admissao,
        _periodoape = periodoape,
        _vencimento = vencimento;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "fk_gestor" field.
  int? _fkGestor;
  int get fkGestor => _fkGestor ?? 0;
  set fkGestor(int? val) => _fkGestor = val;

  void incrementFkGestor(int amount) => fkGestor = fkGestor + amount;

  bool hasFkGestor() => _fkGestor != null;

  // "gestor" field.
  String? _gestor;
  String get gestor => _gestor ?? '';
  set gestor(String? val) => _gestor = val;

  bool hasGestor() => _gestor != null;

  // "fk_empresa" field.
  int? _fkEmpresa;
  int get fkEmpresa => _fkEmpresa ?? 0;
  set fkEmpresa(int? val) => _fkEmpresa = val;

  void incrementFkEmpresa(int amount) => fkEmpresa = fkEmpresa + amount;

  bool hasFkEmpresa() => _fkEmpresa != null;

  // "empresa" field.
  String? _empresa;
  String get empresa => _empresa ?? '';
  set empresa(String? val) => _empresa = val;

  bool hasEmpresa() => _empresa != null;

  // "fk_cargo" field.
  int? _fkCargo;
  int get fkCargo => _fkCargo ?? 0;
  set fkCargo(int? val) => _fkCargo = val;

  void incrementFkCargo(int amount) => fkCargo = fkCargo + amount;

  bool hasFkCargo() => _fkCargo != null;

  // "cargo" field.
  String? _cargo;
  String get cargo => _cargo ?? '';
  set cargo(String? val) => _cargo = val;

  bool hasCargo() => _cargo != null;

  // "fk_colab" field.
  int? _fkColab;
  int get fkColab => _fkColab ?? 0;
  set fkColab(int? val) => _fkColab = val;

  void incrementFkColab(int amount) => fkColab = fkColab + amount;

  bool hasFkColab() => _fkColab != null;

  // "admissao" field.
  String? _admissao;
  String get admissao => _admissao ?? '';
  set admissao(String? val) => _admissao = val;

  bool hasAdmissao() => _admissao != null;

  // "periodoape" field.
  int? _periodoape;
  int get periodoape => _periodoape ?? 0;
  set periodoape(int? val) => _periodoape = val;

  void incrementPeriodoape(int amount) => periodoape = periodoape + amount;

  bool hasPeriodoape() => _periodoape != null;

  // "vencimento" field.
  String? _vencimento;
  String get vencimento => _vencimento ?? '';
  set vencimento(String? val) => _vencimento = val;

  bool hasVencimento() => _vencimento != null;

  static ApeStruct fromMap(Map<String, dynamic> data) => ApeStruct(
        nome: data['nome'] as String?,
        fkGestor: castToType<int>(data['fk_gestor']),
        gestor: data['gestor'] as String?,
        fkEmpresa: castToType<int>(data['fk_empresa']),
        empresa: data['empresa'] as String?,
        fkCargo: castToType<int>(data['fk_cargo']),
        cargo: data['cargo'] as String?,
        fkColab: castToType<int>(data['fk_colab']),
        admissao: data['admissao'] as String?,
        periodoape: castToType<int>(data['periodoape']),
        vencimento: data['vencimento'] as String?,
      );

  static ApeStruct? maybeFromMap(dynamic data) =>
      data is Map ? ApeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'fk_gestor': _fkGestor,
        'gestor': _gestor,
        'fk_empresa': _fkEmpresa,
        'empresa': _empresa,
        'fk_cargo': _fkCargo,
        'cargo': _cargo,
        'fk_colab': _fkColab,
        'admissao': _admissao,
        'periodoape': _periodoape,
        'vencimento': _vencimento,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'fk_gestor': serializeParam(
          _fkGestor,
          ParamType.int,
        ),
        'gestor': serializeParam(
          _gestor,
          ParamType.String,
        ),
        'fk_empresa': serializeParam(
          _fkEmpresa,
          ParamType.int,
        ),
        'empresa': serializeParam(
          _empresa,
          ParamType.String,
        ),
        'fk_cargo': serializeParam(
          _fkCargo,
          ParamType.int,
        ),
        'cargo': serializeParam(
          _cargo,
          ParamType.String,
        ),
        'fk_colab': serializeParam(
          _fkColab,
          ParamType.int,
        ),
        'admissao': serializeParam(
          _admissao,
          ParamType.String,
        ),
        'periodoape': serializeParam(
          _periodoape,
          ParamType.int,
        ),
        'vencimento': serializeParam(
          _vencimento,
          ParamType.String,
        ),
      }.withoutNulls;

  static ApeStruct fromSerializableMap(Map<String, dynamic> data) => ApeStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        fkGestor: deserializeParam(
          data['fk_gestor'],
          ParamType.int,
          false,
        ),
        gestor: deserializeParam(
          data['gestor'],
          ParamType.String,
          false,
        ),
        fkEmpresa: deserializeParam(
          data['fk_empresa'],
          ParamType.int,
          false,
        ),
        empresa: deserializeParam(
          data['empresa'],
          ParamType.String,
          false,
        ),
        fkCargo: deserializeParam(
          data['fk_cargo'],
          ParamType.int,
          false,
        ),
        cargo: deserializeParam(
          data['cargo'],
          ParamType.String,
          false,
        ),
        fkColab: deserializeParam(
          data['fk_colab'],
          ParamType.int,
          false,
        ),
        admissao: deserializeParam(
          data['admissao'],
          ParamType.String,
          false,
        ),
        periodoape: deserializeParam(
          data['periodoape'],
          ParamType.int,
          false,
        ),
        vencimento: deserializeParam(
          data['vencimento'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ApeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ApeStruct &&
        nome == other.nome &&
        fkGestor == other.fkGestor &&
        gestor == other.gestor &&
        fkEmpresa == other.fkEmpresa &&
        empresa == other.empresa &&
        fkCargo == other.fkCargo &&
        cargo == other.cargo &&
        fkColab == other.fkColab &&
        admissao == other.admissao &&
        periodoape == other.periodoape &&
        vencimento == other.vencimento;
  }

  @override
  int get hashCode => const ListEquality().hash([
        nome,
        fkGestor,
        gestor,
        fkEmpresa,
        empresa,
        fkCargo,
        cargo,
        fkColab,
        admissao,
        periodoape,
        vencimento
      ]);
}

ApeStruct createApeStruct({
  String? nome,
  int? fkGestor,
  String? gestor,
  int? fkEmpresa,
  String? empresa,
  int? fkCargo,
  String? cargo,
  int? fkColab,
  String? admissao,
  int? periodoape,
  String? vencimento,
}) =>
    ApeStruct(
      nome: nome,
      fkGestor: fkGestor,
      gestor: gestor,
      fkEmpresa: fkEmpresa,
      empresa: empresa,
      fkCargo: fkCargo,
      cargo: cargo,
      fkColab: fkColab,
      admissao: admissao,
      periodoape: periodoape,
      vencimento: vencimento,
    );
