// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmailStruct extends BaseStruct {
  EmailStruct({
    String? email,
    bool? ativo,
    String? tipo,
  })  : _email = email,
        _ativo = ativo,
        _tipo = tipo;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  set ativo(bool? val) => _ativo = val;

  bool hasAtivo() => _ativo != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  static EmailStruct fromMap(Map<String, dynamic> data) => EmailStruct(
        email: data['email'] as String?,
        ativo: data['ativo'] as bool?,
        tipo: data['tipo'] as String?,
      );

  static EmailStruct? maybeFromMap(dynamic data) =>
      data is Map ? EmailStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'ativo': _ativo,
        'tipo': _tipo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'ativo': serializeParam(
          _ativo,
          ParamType.bool,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
      }.withoutNulls;

  static EmailStruct fromSerializableMap(Map<String, dynamic> data) =>
      EmailStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        ativo: deserializeParam(
          data['ativo'],
          ParamType.bool,
          false,
        ),
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EmailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EmailStruct &&
        email == other.email &&
        ativo == other.ativo &&
        tipo == other.tipo;
  }

  @override
  int get hashCode => const ListEquality().hash([email, ativo, tipo]);
}

EmailStruct createEmailStruct({
  String? email,
  bool? ativo,
  String? tipo,
}) =>
    EmailStruct(
      email: email,
      ativo: ativo,
      tipo: tipo,
    );
