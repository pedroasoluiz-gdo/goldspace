import '../database.dart';

class DCanaisTable extends SupabaseTable<DCanaisRow> {
  @override
  String get tableName => 'd_canais';

  @override
  DCanaisRow createRow(Map<String, dynamic> data) => DCanaisRow(data);
}

class DCanaisRow extends SupabaseDataRow {
  DCanaisRow(super.data);

  @override
  SupabaseTable get table => DCanaisTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  DateTime get criacao => getField<DateTime>('criacao')!;
  set criacao(DateTime value) => setField<DateTime>('criacao', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);
}
