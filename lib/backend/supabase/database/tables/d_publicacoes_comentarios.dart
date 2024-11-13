import '../database.dart';

class DPublicacoesComentariosTable
    extends SupabaseTable<DPublicacoesComentariosRow> {
  @override
  String get tableName => 'd_publicacoes_comentarios';

  @override
  DPublicacoesComentariosRow createRow(Map<String, dynamic> data) =>
      DPublicacoesComentariosRow(data);
}

class DPublicacoesComentariosRow extends SupabaseDataRow {
  DPublicacoesComentariosRow(super.data);

  @override
  SupabaseTable get table => DPublicacoesComentariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get criacao => getField<DateTime>('criacao')!;
  set criacao(DateTime value) => setField<DateTime>('criacao', value);

  int? get fkPublicacao => getField<int>('fkPublicacao');
  set fkPublicacao(int? value) => setField<int>('fkPublicacao', value);

  String? get fkUser => getField<String>('fkUser');
  set fkUser(String? value) => setField<String>('fkUser', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);
}
