// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnderecoStruct extends BaseStruct {
  EnderecoStruct({
    String? logradouro,
    int? numero,
    String? complemento,
    String? bairro,
    String? cidade,
    String? cep,
  })  : _logradouro = logradouro,
        _numero = numero,
        _complemento = complemento,
        _bairro = bairro,
        _cidade = cidade,
        _cep = cep;

  // "logradouro" field.
  String? _logradouro;
  String get logradouro => _logradouro ?? '';
  set logradouro(String? val) => _logradouro = val;

  bool hasLogradouro() => _logradouro != null;

  // "numero" field.
  int? _numero;
  int get numero => _numero ?? 0;
  set numero(int? val) => _numero = val;

  void incrementNumero(int amount) => numero = numero + amount;

  bool hasNumero() => _numero != null;

  // "complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  set complemento(String? val) => _complemento = val;

  bool hasComplemento() => _complemento != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  set bairro(String? val) => _bairro = val;

  bool hasBairro() => _bairro != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  set cidade(String? val) => _cidade = val;

  bool hasCidade() => _cidade != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;

  bool hasCep() => _cep != null;

  static EnderecoStruct fromMap(Map<String, dynamic> data) => EnderecoStruct(
        logradouro: data['logradouro'] as String?,
        numero: castToType<int>(data['numero']),
        complemento: data['complemento'] as String?,
        bairro: data['bairro'] as String?,
        cidade: data['cidade'] as String?,
        cep: data['cep'] as String?,
      );

  static EnderecoStruct? maybeFromMap(dynamic data) =>
      data is Map ? EnderecoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'logradouro': _logradouro,
        'numero': _numero,
        'complemento': _complemento,
        'bairro': _bairro,
        'cidade': _cidade,
        'cep': _cep,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'logradouro': serializeParam(
          _logradouro,
          ParamType.String,
        ),
        'numero': serializeParam(
          _numero,
          ParamType.int,
        ),
        'complemento': serializeParam(
          _complemento,
          ParamType.String,
        ),
        'bairro': serializeParam(
          _bairro,
          ParamType.String,
        ),
        'cidade': serializeParam(
          _cidade,
          ParamType.String,
        ),
        'cep': serializeParam(
          _cep,
          ParamType.String,
        ),
      }.withoutNulls;

  static EnderecoStruct fromSerializableMap(Map<String, dynamic> data) =>
      EnderecoStruct(
        logradouro: deserializeParam(
          data['logradouro'],
          ParamType.String,
          false,
        ),
        numero: deserializeParam(
          data['numero'],
          ParamType.int,
          false,
        ),
        complemento: deserializeParam(
          data['complemento'],
          ParamType.String,
          false,
        ),
        bairro: deserializeParam(
          data['bairro'],
          ParamType.String,
          false,
        ),
        cidade: deserializeParam(
          data['cidade'],
          ParamType.String,
          false,
        ),
        cep: deserializeParam(
          data['cep'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EnderecoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EnderecoStruct &&
        logradouro == other.logradouro &&
        numero == other.numero &&
        complemento == other.complemento &&
        bairro == other.bairro &&
        cidade == other.cidade &&
        cep == other.cep;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([logradouro, numero, complemento, bairro, cidade, cep]);
}

EnderecoStruct createEnderecoStruct({
  String? logradouro,
  int? numero,
  String? complemento,
  String? bairro,
  String? cidade,
  String? cep,
}) =>
    EnderecoStruct(
      logradouro: logradouro,
      numero: numero,
      complemento: complemento,
      bairro: bairro,
      cidade: cidade,
      cep: cep,
    );
