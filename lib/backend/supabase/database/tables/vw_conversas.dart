import '../database.dart';

class VwConversasTable extends SupabaseTable<VwConversasRow> {
  @override
  String get tableName => 'vw_conversas';

  @override
  VwConversasRow createRow(Map<String, dynamic> data) => VwConversasRow(data);
}

class VwConversasRow extends SupabaseDataRow {
  VwConversasRow(super.data);

  @override
  SupabaseTable get table => VwConversasTable();

  String? get fkConversa => getField<String>('fk_Conversa');
  set fkConversa(String? value) => setField<String>('fk_Conversa', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get picture => getField<String>('picture');
  set picture(String? value) => setField<String>('picture', value);

  int? get vistoFalse => getField<int>('visto_false');
  set vistoFalse(int? value) => setField<int>('visto_false', value);

  String? get ultimaMensagem => getField<String>('ultima_mensagem');
  set ultimaMensagem(String? value) =>
      setField<String>('ultima_mensagem', value);

  DateTime? get ultimaData => getField<DateTime>('ultima_data');
  set ultimaData(DateTime? value) => setField<DateTime>('ultima_data', value);
}
