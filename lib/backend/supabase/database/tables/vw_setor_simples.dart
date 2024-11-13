import '../database.dart';

class VwSetorSimplesTable extends SupabaseTable<VwSetorSimplesRow> {
  @override
  String get tableName => 'vw_setor_simples';

  @override
  VwSetorSimplesRow createRow(Map<String, dynamic> data) =>
      VwSetorSimplesRow(data);
}

class VwSetorSimplesRow extends SupabaseDataRow {
  VwSetorSimplesRow(super.data);

  @override
  SupabaseTable get table => VwSetorSimplesTable();

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);
}
