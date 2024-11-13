import '../database.dart';

class DCidadesTable extends SupabaseTable<DCidadesRow> {
  @override
  String get tableName => 'd_cidades';

  @override
  DCidadesRow createRow(Map<String, dynamic> data) => DCidadesRow(data);
}

class DCidadesRow extends SupabaseDataRow {
  DCidadesRow(super.data);

  @override
  SupabaseTable get table => DCidadesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get idUf => getField<int>('id_uf');
  set idUf(int? value) => setField<int>('id_uf', value);
}
