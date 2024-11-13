import '../database.dart';

class VwConversasNaoVistasPorUsuarioTable
    extends SupabaseTable<VwConversasNaoVistasPorUsuarioRow> {
  @override
  String get tableName => 'vw_conversas_nao_vistas_por_usuario';

  @override
  VwConversasNaoVistasPorUsuarioRow createRow(Map<String, dynamic> data) =>
      VwConversasNaoVistasPorUsuarioRow(data);
}

class VwConversasNaoVistasPorUsuarioRow extends SupabaseDataRow {
  VwConversasNaoVistasPorUsuarioRow(super.data);

  @override
  SupabaseTable get table => VwConversasNaoVistasPorUsuarioTable();

  String? get fkConversa => getField<String>('fk_Conversa');
  set fkConversa(String? value) => setField<String>('fk_Conversa', value);

  int? get totalNaoVistas => getField<int>('total_nao_vistas');
  set totalNaoVistas(int? value) => setField<int>('total_nao_vistas', value);
}
