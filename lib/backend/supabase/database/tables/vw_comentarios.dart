import '../database.dart';

class VwComentariosTable extends SupabaseTable<VwComentariosRow> {
  @override
  String get tableName => 'vw_comentarios';

  @override
  VwComentariosRow createRow(Map<String, dynamic> data) =>
      VwComentariosRow(data);
}

class VwComentariosRow extends SupabaseDataRow {
  VwComentariosRow(super.data);

  @override
  SupabaseTable get table => VwComentariosTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get criacao => getField<DateTime>('criacao');
  set criacao(DateTime? value) => setField<DateTime>('criacao', value);

  int? get fkPublicacao => getField<int>('fkPublicacao');
  set fkPublicacao(int? value) => setField<int>('fkPublicacao', value);

  String? get fkUser => getField<String>('fkUser');
  set fkUser(String? value) => setField<String>('fkUser', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get urlpicture => getField<String>('urlpicture');
  set urlpicture(String? value) => setField<String>('urlpicture', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);
}
