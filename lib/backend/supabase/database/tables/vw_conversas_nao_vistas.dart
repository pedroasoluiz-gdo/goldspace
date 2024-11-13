import '../database.dart';

class VwConversasNaoVistasTable extends SupabaseTable<VwConversasNaoVistasRow> {
  @override
  String get tableName => 'vw_conversas_nao_vistas';

  @override
  VwConversasNaoVistasRow createRow(Map<String, dynamic> data) =>
      VwConversasNaoVistasRow(data);
}

class VwConversasNaoVistasRow extends SupabaseDataRow {
  VwConversasNaoVistasRow(super.data);

  @override
  SupabaseTable get table => VwConversasNaoVistasTable();

  int? get totalNaoVistas => getField<int>('total_nao_vistas');
  set totalNaoVistas(int? value) => setField<int>('total_nao_vistas', value);
}
