import '../database.dart';

class DPublicacoesUrlsTable extends SupabaseTable<DPublicacoesUrlsRow> {
  @override
  String get tableName => 'd_publicacoes_urls';

  @override
  DPublicacoesUrlsRow createRow(Map<String, dynamic> data) =>
      DPublicacoesUrlsRow(data);
}

class DPublicacoesUrlsRow extends SupabaseDataRow {
  DPublicacoesUrlsRow(super.data);

  @override
  SupabaseTable get table => DPublicacoesUrlsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get fkPublicacao => getField<int>('fkPublicacao');
  set fkPublicacao(int? value) => setField<int>('fkPublicacao', value);

  List<String> get url => getListField<String>('url');
  set url(List<String>? value) => setListField<String>('url', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);
}
