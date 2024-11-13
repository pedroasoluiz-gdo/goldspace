import '../database.dart';

class VwCApeRespondidoTable extends SupabaseTable<VwCApeRespondidoRow> {
  @override
  String get tableName => 'vw_c_ape_respondido';

  @override
  VwCApeRespondidoRow createRow(Map<String, dynamic> data) =>
      VwCApeRespondidoRow(data);
}

class VwCApeRespondidoRow extends SupabaseDataRow {
  VwCApeRespondidoRow(super.data);

  @override
  SupabaseTable get table => VwCApeRespondidoTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get idcolab => getField<int>('idcolab');
  set idcolab(int? value) => setField<int>('idcolab', value);

  String? get cargo => getField<String>('cargo');
  set cargo(String? value) => setField<String>('cargo', value);

  String? get emailgestor => getField<String>('emailgestor');
  set emailgestor(String? value) => setField<String>('emailgestor', value);

  String? get response => getField<String>('response');
  set response(String? value) => setField<String>('response', value);

  DateTime? get cadastro => getField<DateTime>('cadastro');
  set cadastro(DateTime? value) => setField<DateTime>('cadastro', value);
}
