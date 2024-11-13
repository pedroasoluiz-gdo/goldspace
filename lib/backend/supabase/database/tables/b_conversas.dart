import '../database.dart';

class BConversasTable extends SupabaseTable<BConversasRow> {
  @override
  String get tableName => 'b_conversas';

  @override
  BConversasRow createRow(Map<String, dynamic> data) => BConversasRow(data);
}

class BConversasRow extends SupabaseDataRow {
  BConversasRow(super.data);

  @override
  SupabaseTable get table => BConversasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get dataCriacao => getField<DateTime>('data_criacao')!;
  set dataCriacao(DateTime value) => setField<DateTime>('data_criacao', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);
}
