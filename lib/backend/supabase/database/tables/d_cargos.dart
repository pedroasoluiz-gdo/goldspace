import '../database.dart';

class DCargosTable extends SupabaseTable<DCargosRow> {
  @override
  String get tableName => 'd_cargos';

  @override
  DCargosRow createRow(Map<String, dynamic> data) => DCargosRow(data);
}

class DCargosRow extends SupabaseDataRow {
  DCargosRow(super.data);

  @override
  SupabaseTable get table => DCargosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  DateTime get cadastro => getField<DateTime>('cadastro')!;
  set cadastro(DateTime value) => setField<DateTime>('cadastro', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);
}
