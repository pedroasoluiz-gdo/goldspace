// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmailPrincipalStruct extends BaseStruct {
  EmailPrincipalStruct({
    String? tipo,
    bool? ativo,
    String? email,
  })  : _tipo = tipo,
        _ativo = ativo,
        _email = email;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  set ativo(bool? val) => _ativo = val;

  bool hasAtivo() => _ativo != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  static EmailPrincipalStruct fromMap(Map<String, dynamic> data) =>
      EmailPrincipalStruct(
        tipo: data['tipo'] as String?,
        ativo: data['ativo'] as bool?,
        email: data['email'] as String?,
      );

  static EmailPrincipalStruct? maybeFromMap(dynamic data) => data is Map
      ? EmailPrincipalStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'tipo': _tipo,
        'ativo': _ativo,
        'email': _email,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'ativo': serializeParam(
          _ativo,
          ParamType.bool,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
      }.withoutNulls;

  static EmailPrincipalStruct fromSerializableMap(Map<String, dynamic> data) =>
      EmailPrincipalStruct(
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        ativo: deserializeParam(
          data['ativo'],
          ParamType.bool,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EmailPrincipalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EmailPrincipalStruct &&
        tipo == other.tipo &&
        ativo == other.ativo &&
        email == other.email;
  }

  @override
  int get hashCode => const ListEquality().hash([tipo, ativo, email]);
}

EmailPrincipalStruct createEmailPrincipalStruct({
  String? tipo,
  bool? ativo,
  String? email,
}) =>
    EmailPrincipalStruct(
      tipo: tipo,
      ativo: ativo,
      email: email,
    );
