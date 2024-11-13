import '../database.dart';

class VwQtdpublicacoesPorUsuarioTable
    extends SupabaseTable<VwQtdpublicacoesPorUsuarioRow> {
  @override
  String get tableName => 'vw_qtdpublicacoes_por_usuario';

  @override
  VwQtdpublicacoesPorUsuarioRow createRow(Map<String, dynamic> data) =>
      VwQtdpublicacoesPorUsuarioRow(data);
}

class VwQtdpublicacoesPorUsuarioRow extends SupabaseDataRow {
  VwQtdpublicacoesPorUsuarioRow(super.data);

  @override
  SupabaseTable get table => VwQtdpublicacoesPorUsuarioTable();

  String? get fkUser => getField<String>('fkUser');
  set fkUser(String? value) => setField<String>('fkUser', value);

  int? get total => getField<int>('total');
  set total(int? value) => setField<int>('total', value);
}
