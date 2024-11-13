import '../database.dart';

class DEmpresasTable extends SupabaseTable<DEmpresasRow> {
  @override
  String get tableName => 'd_empresas';

  @override
  DEmpresasRow createRow(Map<String, dynamic> data) => DEmpresasRow(data);
}

class DEmpresasRow extends SupabaseDataRow {
  DEmpresasRow(super.data);

  @override
  SupabaseTable get table => DEmpresasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get grupo => getField<String>('grupo');
  set grupo(String? value) => setField<String>('grupo', value);

  DateTime get cadastro => getField<DateTime>('cadastro')!;
  set cadastro(DateTime value) => setField<DateTime>('cadastro', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);
}
