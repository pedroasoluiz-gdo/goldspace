import '../database.dart';

class BConversasUsuariosTable extends SupabaseTable<BConversasUsuariosRow> {
  @override
  String get tableName => 'b_conversas_usuarios';

  @override
  BConversasUsuariosRow createRow(Map<String, dynamic> data) =>
      BConversasUsuariosRow(data);
}

class BConversasUsuariosRow extends SupabaseDataRow {
  BConversasUsuariosRow(super.data);

  @override
  SupabaseTable get table => BConversasUsuariosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get fkConversa => getField<String>('fkConversa');
  set fkConversa(String? value) => setField<String>('fkConversa', value);

  String? get fkUser => getField<String>('fkUser');
  set fkUser(String? value) => setField<String>('fkUser', value);
}
