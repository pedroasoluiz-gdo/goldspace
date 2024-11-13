import '../database.dart';

class VwEmpresaSimpleTable extends SupabaseTable<VwEmpresaSimpleRow> {
  @override
  String get tableName => 'vw_empresa_simple';

  @override
  VwEmpresaSimpleRow createRow(Map<String, dynamic> data) =>
      VwEmpresaSimpleRow(data);
}

class VwEmpresaSimpleRow extends SupabaseDataRow {
  VwEmpresaSimpleRow(super.data);

  @override
  SupabaseTable get table => VwEmpresaSimpleTable();

  String? get grupo => getField<String>('grupo');
  set grupo(String? value) => setField<String>('grupo', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);
}
