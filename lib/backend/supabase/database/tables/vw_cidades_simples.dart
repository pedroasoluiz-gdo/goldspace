import '../database.dart';

class VwCidadesSimplesTable extends SupabaseTable<VwCidadesSimplesRow> {
  @override
  String get tableName => 'vw_cidades_simples';

  @override
  VwCidadesSimplesRow createRow(Map<String, dynamic> data) =>
      VwCidadesSimplesRow(data);
}

class VwCidadesSimplesRow extends SupabaseDataRow {
  VwCidadesSimplesRow(super.data);

  @override
  SupabaseTable get table => VwCidadesSimplesTable();

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);
}
