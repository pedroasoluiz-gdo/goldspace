// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CanaisXprocessosStruct extends BaseStruct {
  CanaisXprocessosStruct({
    int? fkProcesso,
    int? fkCanal,
    String? descricao,
  })  : _fkProcesso = fkProcesso,
        _fkCanal = fkCanal,
        _descricao = descricao;

  // "fk_processo" field.
  int? _fkProcesso;
  int get fkProcesso => _fkProcesso ?? 0;
  set fkProcesso(int? val) => _fkProcesso = val;

  void incrementFkProcesso(int amount) => fkProcesso = fkProcesso + amount;

  bool hasFkProcesso() => _fkProcesso != null;

  // "fk_canal" field.
  int? _fkCanal;
  int get fkCanal => _fkCanal ?? 0;
  set fkCanal(int? val) => _fkCanal = val;

  void incrementFkCanal(int amount) => fkCanal = fkCanal + amount;

  bool hasFkCanal() => _fkCanal != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  static CanaisXprocessosStruct fromMap(Map<String, dynamic> data) =>
      CanaisXprocessosStruct(
        fkProcesso: castToType<int>(data['fk_processo']),
        fkCanal: castToType<int>(data['fk_canal']),
        descricao: data['descricao'] as String?,
      );

  static CanaisXprocessosStruct? maybeFromMap(dynamic data) => data is Map
      ? CanaisXprocessosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'fk_processo': _fkProcesso,
        'fk_canal': _fkCanal,
        'descricao': _descricao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fk_processo': serializeParam(
          _fkProcesso,
          ParamType.int,
        ),
        'fk_canal': serializeParam(
          _fkCanal,
          ParamType.int,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
      }.withoutNulls;

  static CanaisXprocessosStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CanaisXprocessosStruct(
        fkProcesso: deserializeParam(
          data['fk_processo'],
          ParamType.int,
          false,
        ),
        fkCanal: deserializeParam(
          data['fk_canal'],
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
  String toString() => 'CanaisXprocessosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CanaisXprocessosStruct &&
        fkProcesso == other.fkProcesso &&
        fkCanal == other.fkCanal &&
        descricao == other.descricao;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([fkProcesso, fkCanal, descricao]);
}

CanaisXprocessosStruct createCanaisXprocessosStruct({
  int? fkProcesso,
  int? fkCanal,
  String? descricao,
}) =>
    CanaisXprocessosStruct(
      fkProcesso: fkProcesso,
      fkCanal: fkCanal,
      descricao: descricao,
    );
