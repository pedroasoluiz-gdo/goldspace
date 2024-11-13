import '../database.dart';

class VwPadrespondidoTable extends SupabaseTable<VwPadrespondidoRow> {
  @override
  String get tableName => 'vw_padrespondido';

  @override
  VwPadrespondidoRow createRow(Map<String, dynamic> data) =>
      VwPadrespondidoRow(data);
}

class VwPadrespondidoRow extends SupabaseDataRow {
  VwPadrespondidoRow(super.data);

  @override
  SupabaseTable get table => VwPadrespondidoTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get idcolab => getField<int>('idcolab');
  set idcolab(int? value) => setField<int>('idcolab', value);

  String? get cargo => getField<String>('cargo');
  set cargo(String? value) => setField<String>('cargo', value);

  String? get response => getField<String>('response');
  set response(String? value) => setField<String>('response', value);

  DateTime? get cadastro => getField<DateTime>('cadastro');
  set cadastro(DateTime? value) => setField<DateTime>('cadastro', value);
}
