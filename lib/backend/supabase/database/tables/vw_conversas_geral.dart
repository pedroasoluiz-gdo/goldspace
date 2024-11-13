import '../database.dart';

class VwConversasGeralTable extends SupabaseTable<VwConversasGeralRow> {
  @override
  String get tableName => 'vw_conversas_geral';

  @override
  VwConversasGeralRow createRow(Map<String, dynamic> data) =>
      VwConversasGeralRow(data);
}

class VwConversasGeralRow extends SupabaseDataRow {
  VwConversasGeralRow(super.data);

  @override
  SupabaseTable get table => VwConversasGeralTable();

  String? get conversaId => getField<String>('conversa_id');
  set conversaId(String? value) => setField<String>('conversa_id', value);

  String? get cvsUsrId => getField<String>('cvs_usr_id');
  set cvsUsrId(String? value) => setField<String>('cvs_usr_id', value);

  DateTime? get msgUltimaCadastro => getField<DateTime>('msg_ultima_cadastro');
  set msgUltimaCadastro(DateTime? value) =>
      setField<DateTime>('msg_ultima_cadastro', value);

  String? get msgUltimaTexto => getField<String>('msg_ultima_texto');
  set msgUltimaTexto(String? value) =>
      setField<String>('msg_ultima_texto', value);

  String? get usrId => getField<String>('usr_id');
  set usrId(String? value) => setField<String>('usr_id', value);

  String? get usrNome => getField<String>('usr_nome');
  set usrNome(String? value) => setField<String>('usr_nome', value);

  String? get usrFoto => getField<String>('usr_foto');
  set usrFoto(String? value) => setField<String>('usr_foto', value);

  int? get msgNaoLidas => getField<int>('msg_nao_lidas');
  set msgNaoLidas(int? value) => setField<int>('msg_nao_lidas', value);
}
