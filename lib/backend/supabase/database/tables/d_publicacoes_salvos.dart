import '../database.dart';

class DPublicacoesSalvosTable extends SupabaseTable<DPublicacoesSalvosRow> {
  @override
  String get tableName => 'd_publicacoes_salvos';

  @override
  DPublicacoesSalvosRow createRow(Map<String, dynamic> data) =>
      DPublicacoesSalvosRow(data);
}

class DPublicacoesSalvosRow extends SupabaseDataRow {
  DPublicacoesSalvosRow(super.data);

  @override
  SupabaseTable get table => DPublicacoesSalvosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get criacao => getField<DateTime>('criacao')!;
  set criacao(DateTime value) => setField<DateTime>('criacao', value);

  int? get fkPublicacao => getField<int>('fkPublicacao');
  set fkPublicacao(int? value) => setField<int>('fkPublicacao', value);

  String? get fkUsuario => getField<String>('fkUsuario');
  set fkUsuario(String? value) => setField<String>('fkUsuario', value);
}
