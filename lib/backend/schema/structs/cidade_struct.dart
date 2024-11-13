// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CidadeStruct extends BaseStruct {
  CidadeStruct({
    int? id,
    String? descricao,
  })  : _id = id,
        _descricao = descricao;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  static CidadeStruct fromMap(Map<String, dynamic> data) => CidadeStruct(
        id: castToType<int>(data['id']),
        descricao: data['descricao'] as String?,
      );

  static CidadeStruct? maybeFromMap(dynamic data) =>
      data is Map ? CidadeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'descricao': _descricao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
      }.withoutNulls;

  static CidadeStruct fromSerializableMap(Map<String, dynamic> data) =>
      CidadeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CidadeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CidadeStruct &&
        id == other.id &&
        descricao == other.descricao;
  }

  @override
  int get hashCode => const ListEquality().hash([id, descricao]);
}

CidadeStruct createCidadeStruct({
  int? id,
  String? descricao,
}) =>
    CidadeStruct(
      id: id,
      descricao: descricao,
    );
