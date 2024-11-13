// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConversasStruct extends BaseStruct {
  ConversasStruct({
    String? conversaId,
    String? cvsUsrId,
    String? msgUltimaCadastro,
    String? msgUltimaTexto,
    String? usrId,
    String? usrNome,
    int? msgNaoLidas,
    String? usrFoto,
  })  : _conversaId = conversaId,
        _cvsUsrId = cvsUsrId,
        _msgUltimaCadastro = msgUltimaCadastro,
        _msgUltimaTexto = msgUltimaTexto,
        _usrId = usrId,
        _usrNome = usrNome,
        _msgNaoLidas = msgNaoLidas,
        _usrFoto = usrFoto;

  // "conversa_id" field.
  String? _conversaId;
  String get conversaId => _conversaId ?? '';
  set conversaId(String? val) => _conversaId = val;

  bool hasConversaId() => _conversaId != null;

  // "cvs_usr_id" field.
  String? _cvsUsrId;
  String get cvsUsrId => _cvsUsrId ?? '';
  set cvsUsrId(String? val) => _cvsUsrId = val;

  bool hasCvsUsrId() => _cvsUsrId != null;

  // "msg_ultima_cadastro" field.
  String? _msgUltimaCadastro;
  String get msgUltimaCadastro => _msgUltimaCadastro ?? '';
  set msgUltimaCadastro(String? val) => _msgUltimaCadastro = val;

  bool hasMsgUltimaCadastro() => _msgUltimaCadastro != null;

  // "msg_ultima_texto" field.
  String? _msgUltimaTexto;
  String get msgUltimaTexto => _msgUltimaTexto ?? '';
  set msgUltimaTexto(String? val) => _msgUltimaTexto = val;

  bool hasMsgUltimaTexto() => _msgUltimaTexto != null;

  // "usr_id" field.
  String? _usrId;
  String get usrId => _usrId ?? '';
  set usrId(String? val) => _usrId = val;

  bool hasUsrId() => _usrId != null;

  // "usr_nome" field.
  String? _usrNome;
  String get usrNome => _usrNome ?? '';
  set usrNome(String? val) => _usrNome = val;

  bool hasUsrNome() => _usrNome != null;

  // "msg_nao_lidas" field.
  int? _msgNaoLidas;
  int get msgNaoLidas => _msgNaoLidas ?? 0;
  set msgNaoLidas(int? val) => _msgNaoLidas = val;

  void incrementMsgNaoLidas(int amount) => msgNaoLidas = msgNaoLidas + amount;

  bool hasMsgNaoLidas() => _msgNaoLidas != null;

  // "usr_foto" field.
  String? _usrFoto;
  String get usrFoto => _usrFoto ?? '';
  set usrFoto(String? val) => _usrFoto = val;

  bool hasUsrFoto() => _usrFoto != null;

  static ConversasStruct fromMap(Map<String, dynamic> data) => ConversasStruct(
        conversaId: data['conversa_id'] as String?,
        cvsUsrId: data['cvs_usr_id'] as String?,
        msgUltimaCadastro: data['msg_ultima_cadastro'] as String?,
        msgUltimaTexto: data['msg_ultima_texto'] as String?,
        usrId: data['usr_id'] as String?,
        usrNome: data['usr_nome'] as String?,
        msgNaoLidas: castToType<int>(data['msg_nao_lidas']),
        usrFoto: data['usr_foto'] as String?,
      );

  static ConversasStruct? maybeFromMap(dynamic data) => data is Map
      ? ConversasStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'conversa_id': _conversaId,
        'cvs_usr_id': _cvsUsrId,
        'msg_ultima_cadastro': _msgUltimaCadastro,
        'msg_ultima_texto': _msgUltimaTexto,
        'usr_id': _usrId,
        'usr_nome': _usrNome,
        'msg_nao_lidas': _msgNaoLidas,
        'usr_foto': _usrFoto,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'conversa_id': serializeParam(
          _conversaId,
          ParamType.String,
        ),
        'cvs_usr_id': serializeParam(
          _cvsUsrId,
          ParamType.String,
        ),
        'msg_ultima_cadastro': serializeParam(
          _msgUltimaCadastro,
          ParamType.String,
        ),
        'msg_ultima_texto': serializeParam(
          _msgUltimaTexto,
          ParamType.String,
        ),
        'usr_id': serializeParam(
          _usrId,
          ParamType.String,
        ),
        'usr_nome': serializeParam(
          _usrNome,
          ParamType.String,
        ),
        'msg_nao_lidas': serializeParam(
          _msgNaoLidas,
          ParamType.int,
        ),
        'usr_foto': serializeParam(
          _usrFoto,
          ParamType.String,
        ),
      }.withoutNulls;

  static ConversasStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConversasStruct(
        conversaId: deserializeParam(
          data['conversa_id'],
          ParamType.String,
          false,
        ),
        cvsUsrId: deserializeParam(
          data['cvs_usr_id'],
          ParamType.String,
          false,
        ),
        msgUltimaCadastro: deserializeParam(
          data['msg_ultima_cadastro'],
          ParamType.String,
          false,
        ),
        msgUltimaTexto: deserializeParam(
          data['msg_ultima_texto'],
          ParamType.String,
          false,
        ),
        usrId: deserializeParam(
          data['usr_id'],
          ParamType.String,
          false,
        ),
        usrNome: deserializeParam(
          data['usr_nome'],
          ParamType.String,
          false,
        ),
        msgNaoLidas: deserializeParam(
          data['msg_nao_lidas'],
          ParamType.int,
          false,
        ),
        usrFoto: deserializeParam(
          data['usr_foto'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ConversasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConversasStruct &&
        conversaId == other.conversaId &&
        cvsUsrId == other.cvsUsrId &&
        msgUltimaCadastro == other.msgUltimaCadastro &&
        msgUltimaTexto == other.msgUltimaTexto &&
        usrId == other.usrId &&
        usrNome == other.usrNome &&
        msgNaoLidas == other.msgNaoLidas &&
        usrFoto == other.usrFoto;
  }

  @override
  int get hashCode => const ListEquality().hash([
        conversaId,
        cvsUsrId,
        msgUltimaCadastro,
        msgUltimaTexto,
        usrId,
        usrNome,
        msgNaoLidas,
        usrFoto
      ]);
}

ConversasStruct createConversasStruct({
  String? conversaId,
  String? cvsUsrId,
  String? msgUltimaCadastro,
  String? msgUltimaTexto,
  String? usrId,
  String? usrNome,
  int? msgNaoLidas,
  String? usrFoto,
}) =>
    ConversasStruct(
      conversaId: conversaId,
      cvsUsrId: cvsUsrId,
      msgUltimaCadastro: msgUltimaCadastro,
      msgUltimaTexto: msgUltimaTexto,
      usrId: usrId,
      usrNome: usrNome,
      msgNaoLidas: msgNaoLidas,
      usrFoto: usrFoto,
    );
