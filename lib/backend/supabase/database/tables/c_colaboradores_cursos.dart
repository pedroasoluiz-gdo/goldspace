import '../database.dart';

class CColaboradoresCursosTable extends SupabaseTable<CColaboradoresCursosRow> {
  @override
  String get tableName => 'c_colaboradores_cursos';

  @override
  CColaboradoresCursosRow createRow(Map<String, dynamic> data) =>
      CColaboradoresCursosRow(data);
}

class CColaboradoresCursosRow extends SupabaseDataRow {
  CColaboradoresCursosRow(super.data);

  @override
  SupabaseTable get table => CColaboradoresCursosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get criacao => getField<DateTime>('criacao')!;
  set criacao(DateTime value) => setField<DateTime>('criacao', value);

  int? get fkUser => getField<int>('fkUser');
  set fkUser(int? value) => setField<int>('fkUser', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get organizacaoEmissora => getField<String>('organizacaoEmissora');
  set organizacaoEmissora(String? value) =>
      setField<String>('organizacaoEmissora', value);

  DateTime? get emissao => getField<DateTime>('emissao');
  set emissao(DateTime? value) => setField<DateTime>('emissao', value);

  DateTime? get expiracao => getField<DateTime>('expiracao');
  set expiracao(DateTime? value) => setField<DateTime>('expiracao', value);

  int? get tempo => getField<int>('tempo');
  set tempo(int? value) => setField<int>('tempo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  List<String> get urlCertificado => getListField<String>('urlCertificado');
  set urlCertificado(List<String>? value) =>
      setListField<String>('urlCertificado', value);
}
