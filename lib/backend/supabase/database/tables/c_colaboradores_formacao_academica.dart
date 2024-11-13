import '../database.dart';

class CColaboradoresFormacaoAcademicaTable
    extends SupabaseTable<CColaboradoresFormacaoAcademicaRow> {
  @override
  String get tableName => 'c_colaboradores_formacaoAcademica';

  @override
  CColaboradoresFormacaoAcademicaRow createRow(Map<String, dynamic> data) =>
      CColaboradoresFormacaoAcademicaRow(data);
}

class CColaboradoresFormacaoAcademicaRow extends SupabaseDataRow {
  CColaboradoresFormacaoAcademicaRow(super.data);

  @override
  SupabaseTable get table => CColaboradoresFormacaoAcademicaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get criacao => getField<DateTime>('criacao')!;
  set criacao(DateTime value) => setField<DateTime>('criacao', value);

  int? get fkColab => getField<int>('fkColab');
  set fkColab(int? value) => setField<int>('fkColab', value);

  String? get diploma => getField<String>('diploma');
  set diploma(String? value) => setField<String>('diploma', value);

  String? get areaEstudo => getField<String>('areaEstudo');
  set areaEstudo(String? value) => setField<String>('areaEstudo', value);

  String? get instituicao => getField<String>('instituicao');
  set instituicao(String? value) => setField<String>('instituicao', value);

  DateTime? get dataInicio => getField<DateTime>('dataInicio');
  set dataInicio(DateTime? value) => setField<DateTime>('dataInicio', value);

  DateTime? get dataFim => getField<DateTime>('dataFim');
  set dataFim(DateTime? value) => setField<DateTime>('dataFim', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  List<String> get urlDiploma => getListField<String>('urlDiploma');
  set urlDiploma(List<String>? value) =>
      setListField<String>('urlDiploma', value);
}
