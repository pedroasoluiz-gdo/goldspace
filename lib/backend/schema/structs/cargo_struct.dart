// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CargoStruct extends BaseStruct {
  CargoStruct({
    int? id,
    String? descricao,
    String? tipo,
  })  : _id = id,
        _descricao = descricao,
        _tipo = tipo;

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

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  static CargoStruct fromMap(Map<String, dynamic> data) => CargoStruct(
        id: castToType<int>(data['id']),
        descricao: data['descricao'] as String?,
        tipo: data['tipo'] as String?,
      );

  static CargoStruct? maybeFromMap(dynamic data) =>
      data is Map ? CargoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'descricao': _descricao,
        'tipo': _tipo,
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
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
      }.withoutNulls;

  static CargoStruct fromSerializableMap(Map<String, dynamic> data) =>
      CargoStruct(
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
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CargoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CargoStruct &&
        id == other.id &&
        descricao == other.descricao &&
        tipo == other.tipo;
  }

  @override
  int get hashCode => const ListEquality().hash([id, descricao, tipo]);
}

CargoStruct createCargoStruct({
  int? id,
  String? descricao,
  String? tipo,
}) =>
    CargoStruct(
      id: id,
      descricao: descricao,
      tipo: tipo,
    );
