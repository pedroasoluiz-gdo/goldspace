import '../database.dart';

class VwGestorSimplesTable extends SupabaseTable<VwGestorSimplesRow> {
  @override
  String get tableName => 'vw_gestor_simples';

  @override
  VwGestorSimplesRow createRow(Map<String, dynamic> data) =>
      VwGestorSimplesRow(data);
}

class VwGestorSimplesRow extends SupabaseDataRow {
  VwGestorSimplesRow(super.data);

  @override
  SupabaseTable get table => VwGestorSimplesTable();

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
