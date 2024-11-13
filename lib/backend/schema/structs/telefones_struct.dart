// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TelefonesStruct extends BaseStruct {
  TelefonesStruct({
    String? tipo,
    bool? ativo,
    String? numero,
    String? descricao,
  })  : _tipo = tipo,
        _ativo = ativo,
        _numero = numero,
        _descricao = descricao;

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

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  set numero(String? val) => _numero = val;

  bool hasNumero() => _numero != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  static TelefonesStruct fromMap(Map<String, dynamic> data) => TelefonesStruct(
        tipo: data['tipo'] as String?,
        ativo: data['ativo'] as bool?,
        numero: data['numero'] as String?,
        descricao: data['descricao'] as String?,
      );

  static TelefonesStruct? maybeFromMap(dynamic data) => data is Map
      ? TelefonesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'tipo': _tipo,
        'ativo': _ativo,
        'numero': _numero,
        'descricao': _descricao,
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
        'numero': serializeParam(
          _numero,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
      }.withoutNulls;

  static TelefonesStruct fromSerializableMap(Map<String, dynamic> data) =>
      TelefonesStruct(
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
        numero: deserializeParam(
          data['numero'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TelefonesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TelefonesStruct &&
        tipo == other.tipo &&
        ativo == other.ativo &&
        numero == other.numero &&
        descricao == other.descricao;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([tipo, ativo, numero, descricao]);
}

TelefonesStruct createTelefonesStruct({
  String? tipo,
  bool? ativo,
  String? numero,
  String? descricao,
}) =>
    TelefonesStruct(
      tipo: tipo,
      ativo: ativo,
      numero: numero,
      descricao: descricao,
    );
