import '../database.dart';

class DPublicacoesLikedTable extends SupabaseTable<DPublicacoesLikedRow> {
  @override
  String get tableName => 'd_publicacoes_liked';

  @override
  DPublicacoesLikedRow createRow(Map<String, dynamic> data) =>
      DPublicacoesLikedRow(data);
}

class DPublicacoesLikedRow extends SupabaseDataRow {
  DPublicacoesLikedRow(super.data);

  @override
  SupabaseTable get table => DPublicacoesLikedTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get criacao => getField<DateTime>('criacao')!;
  set criacao(DateTime value) => setField<DateTime>('criacao', value);

  int? get fkPublicacao => getField<int>('fk_publicacao');
  set fkPublicacao(int? value) => setField<int>('fk_publicacao', value);

  String? get fkUser => getField<String>('fkUser');
  set fkUser(String? value) => setField<String>('fkUser', value);

  bool? get liked => getField<bool>('liked');
  set liked(bool? value) => setField<bool>('liked', value);
}
