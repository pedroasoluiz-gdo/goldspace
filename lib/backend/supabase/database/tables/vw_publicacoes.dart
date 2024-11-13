import '../database.dart';

class VwPublicacoesTable extends SupabaseTable<VwPublicacoesRow> {
  @override
  String get tableName => 'vw_publicacoes';

  @override
  VwPublicacoesRow createRow(Map<String, dynamic> data) =>
      VwPublicacoesRow(data);
}

class VwPublicacoesRow extends SupabaseDataRow {
  VwPublicacoesRow(super.data);

  @override
  SupabaseTable get table => VwPublicacoesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get criacao => getField<DateTime>('criacao');
  set criacao(DateTime? value) => setField<DateTime>('criacao', value);

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  String? get fkUser => getField<String>('fkUser');
  set fkUser(String? value) => setField<String>('fkUser', value);

  String? get urlpicture => getField<String>('urlpicture');
  set urlpicture(String? value) => setField<String>('urlpicture', value);

  String? get conteudo => getField<String>('conteudo');
  set conteudo(String? value) => setField<String>('conteudo', value);

  int? get curtidas => getField<int>('curtidas');
  set curtidas(int? value) => setField<int>('curtidas', value);

  int? get comentarios => getField<int>('comentarios');
  set comentarios(int? value) => setField<int>('comentarios', value);

  List<String> get tags => getListField<String>('tags');
  set tags(List<String>? value) => setListField<String>('tags', value);

  List<String> get urls => getListField<String>('urls');
  set urls(List<String>? value) => setListField<String>('urls', value);

  dynamic get usuariosLiked => getField<dynamic>('usuarios_liked');
  set usuariosLiked(dynamic value) =>
      setField<dynamic>('usuarios_liked', value);

  dynamic get usuariosSalvos => getField<dynamic>('usuarios_salvos');
  set usuariosSalvos(dynamic value) =>
      setField<dynamic>('usuarios_salvos', value);

  int? get idcolab => getField<int>('idcolab');
  set idcolab(int? value) => setField<int>('idcolab', value);
}
