// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioStruct extends BaseStruct {
  UsuarioStruct({
    String? tipo,
    String? id,
    String? fullName,
    String? picture,
  })  : _tipo = tipo,
        _id = id,
        _fullName = fullName,
        _picture = picture;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "picture" field.
  String? _picture;
  String get picture => _picture ?? '';
  set picture(String? val) => _picture = val;

  bool hasPicture() => _picture != null;

  static UsuarioStruct fromMap(Map<String, dynamic> data) => UsuarioStruct(
        tipo: data['tipo'] as String?,
        id: data['id'] as String?,
        fullName: data['fullName'] as String?,
        picture: data['picture'] as String?,
      );

  static UsuarioStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsuarioStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'tipo': _tipo,
        'id': _id,
        'fullName': _fullName,
        'picture': _picture,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'fullName': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'picture': serializeParam(
          _picture,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsuarioStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsuarioStruct(
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        fullName: deserializeParam(
          data['fullName'],
          ParamType.String,
          false,
        ),
        picture: deserializeParam(
          data['picture'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsuarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsuarioStruct &&
        tipo == other.tipo &&
        id == other.id &&
        fullName == other.fullName &&
        picture == other.picture;
  }

  @override
  int get hashCode => const ListEquality().hash([tipo, id, fullName, picture]);
}

UsuarioStruct createUsuarioStruct({
  String? tipo,
  String? id,
  String? fullName,
  String? picture,
}) =>
    UsuarioStruct(
      tipo: tipo,
      id: id,
      fullName: fullName,
      picture: picture,
    );
