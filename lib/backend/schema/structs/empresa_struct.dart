// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpresaStruct extends BaseStruct {
  EmpresaStruct({
    int? id,
    String? grupo,
    DateTime? cadastro,
    bool? status,
  })  : _id = id,
        _grupo = grupo,
        _cadastro = cadastro,
        _status = status;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "grupo" field.
  String? _grupo;
  String get grupo => _grupo ?? '';
  set grupo(String? val) => _grupo = val;

  bool hasGrupo() => _grupo != null;

  // "cadastro" field.
  DateTime? _cadastro;
  DateTime? get cadastro => _cadastro;
  set cadastro(DateTime? val) => _cadastro = val;

  bool hasCadastro() => _cadastro != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  static EmpresaStruct fromMap(Map<String, dynamic> data) => EmpresaStruct(
        id: castToType<int>(data['id']),
        grupo: data['grupo'] as String?,
        cadastro: data['cadastro'] as DateTime?,
        status: data['status'] as bool?,
      );

  static EmpresaStruct? maybeFromMap(dynamic data) =>
      data is Map ? EmpresaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'grupo': _grupo,
        'cadastro': _cadastro,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'grupo': serializeParam(
          _grupo,
          ParamType.String,
        ),
        'cadastro': serializeParam(
          _cadastro,
          ParamType.DateTime,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
      }.withoutNulls;

  static EmpresaStruct fromSerializableMap(Map<String, dynamic> data) =>
      EmpresaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        grupo: deserializeParam(
          data['grupo'],
          ParamType.String,
          false,
        ),
        cadastro: deserializeParam(
          data['cadastro'],
          ParamType.DateTime,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'EmpresaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EmpresaStruct &&
        id == other.id &&
        grupo == other.grupo &&
        cadastro == other.cadastro &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([id, grupo, cadastro, status]);
}

EmpresaStruct createEmpresaStruct({
  int? id,
  String? grupo,
  DateTime? cadastro,
  bool? status,
}) =>
    EmpresaStruct(
      id: id,
      grupo: grupo,
      cadastro: cadastro,
      status: status,
    );
