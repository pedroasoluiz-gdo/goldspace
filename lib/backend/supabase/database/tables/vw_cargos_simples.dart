import '../database.dart';

class VwCargosSimplesTable extends SupabaseTable<VwCargosSimplesRow> {
  @override
  String get tableName => 'vw_cargos_simples';

  @override
  VwCargosSimplesRow createRow(Map<String, dynamic> data) =>
      VwCargosSimplesRow(data);
}

class VwCargosSimplesRow extends SupabaseDataRow {
  VwCargosSimplesRow(super.data);

  @override
  SupabaseTable get table => VwCargosSimplesTable();

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);
}
