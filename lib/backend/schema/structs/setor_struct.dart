// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SetorStruct extends BaseStruct {
  SetorStruct({
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

  static SetorStruct fromMap(Map<String, dynamic> data) => SetorStruct(
        id: castToType<int>(data['id']),
        descricao: data['descricao'] as String?,
      );

  static SetorStruct? maybeFromMap(dynamic data) =>
      data is Map ? SetorStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static SetorStruct fromSerializableMap(Map<String, dynamic> data) =>
      SetorStruct(
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
  String toString() => 'SetorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SetorStruct &&
        id == other.id &&
        descricao == other.descricao;
  }

  @override
  int get hashCode => const ListEquality().hash([id, descricao]);
}

SetorStruct createSetorStruct({
  int? id,
  String? descricao,
}) =>
    SetorStruct(
      id: id,
      descricao: descricao,
    );
