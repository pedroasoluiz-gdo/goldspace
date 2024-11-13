import '../database.dart';

class DPublicacoesTable extends SupabaseTable<DPublicacoesRow> {
  @override
  String get tableName => 'd_publicacoes';

  @override
  DPublicacoesRow createRow(Map<String, dynamic> data) => DPublicacoesRow(data);
}

class DPublicacoesRow extends SupabaseDataRow {
  DPublicacoesRow(super.data);

  @override
  SupabaseTable get table => DPublicacoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get criacao => getField<DateTime>('criacao')!;
  set criacao(DateTime value) => setField<DateTime>('criacao', value);

  String? get fkUser => getField<String>('fkUser');
  set fkUser(String? value) => setField<String>('fkUser', value);

  String? get conteudo => getField<String>('conteudo');
  set conteudo(String? value) => setField<String>('conteudo', value);

  List<String> get tags => getListField<String>('tags');
  set tags(List<String>? value) => setListField<String>('tags', value);
}
