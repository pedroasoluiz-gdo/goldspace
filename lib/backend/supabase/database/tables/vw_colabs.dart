import '../database.dart';

class VwColabsTable extends SupabaseTable<VwColabsRow> {
  @override
  String get tableName => 'vw_colabs';

  @override
  VwColabsRow createRow(Map<String, dynamic> data) => VwColabsRow(data);
}

class VwColabsRow extends SupabaseDataRow {
  VwColabsRow(super.data);

  @override
  SupabaseTable get table => VwColabsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  DateTime? get admissao => getField<DateTime>('admissao');
  set admissao(DateTime? value) => setField<DateTime>('admissao', value);

  DateTime? get demissao => getField<DateTime>('demissao');
  set demissao(DateTime? value) => setField<DateTime>('demissao', value);

  String? get contrato => getField<String>('contrato');
  set contrato(String? value) => setField<String>('contrato', value);

  String? get sexo => getField<String>('sexo');
  set sexo(String? value) => setField<String>('sexo', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get empresa => getField<String>('empresa');
  set empresa(String? value) => setField<String>('empresa', value);

  String? get setor => getField<String>('setor');
  set setor(String? value) => setField<String>('setor', value);

  String? get cargo => getField<String>('cargo');
  set cargo(String? value) => setField<String>('cargo', value);

  String? get gestor => getField<String>('gestor');
  set gestor(String? value) => setField<String>('gestor', value);

  String? get fkUser => getField<String>('fkUser');
  set fkUser(String? value) => setField<String>('fkUser', value);
}
