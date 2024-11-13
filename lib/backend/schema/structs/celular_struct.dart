// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CelularStruct extends BaseStruct {
  CelularStruct({
    int? id,
    String? numero,
    String? tipo,
    String? descricao,
    bool? ativo,
  })  : _id = id,
        _numero = numero,
        _tipo = tipo,
        _descricao = descricao,
        _ativo = ativo;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  set numero(String? val) => _numero = val;

  bool hasNumero() => _numero != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  set ativo(bool? val) => _ativo = val;

  bool hasAtivo() => _ativo != null;

  static CelularStruct fromMap(Map<String, dynamic> data) => CelularStruct(
        id: castToType<int>(data['id']),
        numero: data['numero'] as String?,
        tipo: data['tipo'] as String?,
        descricao: data['descricao'] as String?,
        ativo: data['ativo'] as bool?,
      );

  static CelularStruct? maybeFromMap(dynamic data) =>
      data is Map ? CelularStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'numero': _numero,
        'tipo': _tipo,
        'descricao': _descricao,
        'ativo': _ativo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'numero': serializeParam(
          _numero,
          ParamType.String,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'ativo': serializeParam(
          _ativo,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CelularStruct fromSerializableMap(Map<String, dynamic> data) =>
      CelularStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        numero: deserializeParam(
          data['numero'],
          ParamType.String,
          false,
        ),
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        ativo: deserializeParam(
          data['ativo'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CelularStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CelularStruct &&
        id == other.id &&
        numero == other.numero &&
        tipo == other.tipo &&
        descricao == other.descricao &&
        ativo == other.ativo;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, numero, tipo, descricao, ativo]);
}

CelularStruct createCelularStruct({
  int? id,
  String? numero,
  String? tipo,
  String? descricao,
  bool? ativo,
}) =>
    CelularStruct(
      id: id,
      numero: numero,
      tipo: tipo,
      descricao: descricao,
      ativo: ativo,
    );
