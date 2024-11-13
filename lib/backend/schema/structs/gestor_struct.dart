// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GestorStruct extends BaseStruct {
  GestorStruct({
    int? id,
    String? nome,
    String? email,
  })  : _id = id,
        _nome = nome,
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

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  static GestorStruct fromMap(Map<String, dynamic> data) => GestorStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        email: data['email'] as String?,
      );

  static GestorStruct? maybeFromMap(dynamic data) =>
      data is Map ? GestorStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'email': _email,
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
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static GestorStruct fromSerializableMap(Map<String, dynamic> data) =>
      GestorStruct(
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
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GestorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GestorStruct &&
        id == other.id &&
        nome == other.nome &&
        email == other.email;
  }

  @override
  int get hashCode => const ListEquality().hash([id, nome, email]);
}

GestorStruct createGestorStruct({
  int? id,
  String? nome,
  String? email,
}) =>
    GestorStruct(
      id: id,
      nome: nome,
      email: email,
    );
