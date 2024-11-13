// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MensagensStruct extends BaseStruct {
  MensagensStruct({
    String? id,
    String? texto,
    bool? lida,
    String? fkConversa,
    String? fkUser,
    String? criacao,
    bool? primeiraDia,
    String? url,
  })  : _id = id,
        _texto = texto,
        _lida = lida,
        _fkConversa = fkConversa,
        _fkUser = fkUser,
        _criacao = criacao,
        _primeiraDia = primeiraDia,
        _url = url;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "texto" field.
  String? _texto;
  String get texto => _texto ?? '';
  set texto(String? val) => _texto = val;

  bool hasTexto() => _texto != null;

  // "lida" field.
  bool? _lida;
  bool get lida => _lida ?? false;
  set lida(bool? val) => _lida = val;

  bool hasLida() => _lida != null;

  // "fkConversa" field.
  String? _fkConversa;
  String get fkConversa => _fkConversa ?? '';
  set fkConversa(String? val) => _fkConversa = val;

  bool hasFkConversa() => _fkConversa != null;

  // "fkUser" field.
  String? _fkUser;
  String get fkUser => _fkUser ?? '';
  set fkUser(String? val) => _fkUser = val;

  bool hasFkUser() => _fkUser != null;

  // "criacao" field.
  String? _criacao;
  String get criacao => _criacao ?? '';
  set criacao(String? val) => _criacao = val;

  bool hasCriacao() => _criacao != null;

  // "primeiraDia" field.
  bool? _primeiraDia;
  bool get primeiraDia => _primeiraDia ?? false;
  set primeiraDia(bool? val) => _primeiraDia = val;

  bool hasPrimeiraDia() => _primeiraDia != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  static MensagensStruct fromMap(Map<String, dynamic> data) => MensagensStruct(
        id: data['id'] as String?,
        texto: data['texto'] as String?,
        lida: data['lida'] as bool?,
        fkConversa: data['fkConversa'] as String?,
        fkUser: data['fkUser'] as String?,
        criacao: data['criacao'] as String?,
        primeiraDia: data['primeiraDia'] as bool?,
        url: data['url'] as String?,
      );

  static MensagensStruct? maybeFromMap(dynamic data) => data is Map
      ? MensagensStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'texto': _texto,
        'lida': _lida,
        'fkConversa': _fkConversa,
        'fkUser': _fkUser,
        'criacao': _criacao,
        'primeiraDia': _primeiraDia,
        'url': _url,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'texto': serializeParam(
          _texto,
          ParamType.String,
        ),
        'lida': serializeParam(
          _lida,
          ParamType.bool,
        ),
        'fkConversa': serializeParam(
          _fkConversa,
          ParamType.String,
        ),
        'fkUser': serializeParam(
          _fkUser,
          ParamType.String,
        ),
        'criacao': serializeParam(
          _criacao,
          ParamType.String,
        ),
        'primeiraDia': serializeParam(
          _primeiraDia,
          ParamType.bool,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
      }.withoutNulls;

  static MensagensStruct fromSerializableMap(Map<String, dynamic> data) =>
      MensagensStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        texto: deserializeParam(
          data['texto'],
          ParamType.String,
          false,
        ),
        lida: deserializeParam(
          data['lida'],
          ParamType.bool,
          false,
        ),
        fkConversa: deserializeParam(
          data['fkConversa'],
          ParamType.String,
          false,
        ),
        fkUser: deserializeParam(
          data['fkUser'],
          ParamType.String,
          false,
        ),
        criacao: deserializeParam(
          data['criacao'],
          ParamType.String,
          false,
        ),
        primeiraDia: deserializeParam(
          data['primeiraDia'],
          ParamType.bool,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MensagensStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MensagensStruct &&
        id == other.id &&
        texto == other.texto &&
        lida == other.lida &&
        fkConversa == other.fkConversa &&
        fkUser == other.fkUser &&
        criacao == other.criacao &&
        primeiraDia == other.primeiraDia &&
        url == other.url;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, texto, lida, fkConversa, fkUser, criacao, primeiraDia, url]);
}

MensagensStruct createMensagensStruct({
  String? id,
  String? texto,
  bool? lida,
  String? fkConversa,
  String? fkUser,
  String? criacao,
  bool? primeiraDia,
  String? url,
}) =>
    MensagensStruct(
      id: id,
      texto: texto,
      lida: lida,
      fkConversa: fkConversa,
      fkUser: fkUser,
      criacao: criacao,
      primeiraDia: primeiraDia,
      url: url,
    );
