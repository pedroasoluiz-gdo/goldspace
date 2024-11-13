import '../database.dart';

class VwColaboradoresSimplesTable
    extends SupabaseTable<VwColaboradoresSimplesRow> {
  @override
  String get tableName => 'vw_colaboradores_simples';

  @override
  VwColaboradoresSimplesRow createRow(Map<String, dynamic> data) =>
      VwColaboradoresSimplesRow(data);
}

class VwColaboradoresSimplesRow extends SupabaseDataRow {
  VwColaboradoresSimplesRow(super.data);

  @override
  SupabaseTable get table => VwColaboradoresSimplesTable();

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get fkUser => getField<String>('fkUser');
  set fkUser(String? value) => setField<String>('fkUser', value);
}
