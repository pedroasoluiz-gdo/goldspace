import '../database.dart';

class VwColaboradoresFullTable extends SupabaseTable<VwColaboradoresFullRow> {
  @override
  String get tableName => 'vw_colaboradores_full';

  @override
  VwColaboradoresFullRow createRow(Map<String, dynamic> data) =>
      VwColaboradoresFullRow(data);
}

class VwColaboradoresFullRow extends SupabaseDataRow {
  VwColaboradoresFullRow(super.data);

  @override
  SupabaseTable get table => VwColaboradoresFullTable();

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

  String? get emailgestor => getField<String>('emailgestor');
  set emailgestor(String? value) => setField<String>('emailgestor', value);

  int? get fkGestor => getField<int>('fk_gestor');
  set fkGestor(int? value) => setField<int>('fk_gestor', value);

  int? get fkCidade => getField<int>('fk_cidade');
  set fkCidade(int? value) => setField<int>('fk_cidade', value);

  int? get fkEmpresa => getField<int>('fk_empresa');
  set fkEmpresa(int? value) => setField<int>('fk_empresa', value);

  int? get fkSetor => getField<int>('fk_setor');
  set fkSetor(int? value) => setField<int>('fk_setor', value);

  int? get fkCargo => getField<int>('fk_cargo');
  set fkCargo(int? value) => setField<int>('fk_cargo', value);

  String? get fkUser => getField<String>('fkUser');
  set fkUser(String? value) => setField<String>('fkUser', value);

  String? get nickname => getField<String>('nickname');
  set nickname(String? value) => setField<String>('nickname', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  dynamic get endereco => getField<dynamic>('endereco');
  set endereco(dynamic value) => setField<dynamic>('endereco', value);

  dynamic get telefones => getField<dynamic>('telefones');
  set telefones(dynamic value) => setField<dynamic>('telefones', value);

  dynamic get emailPrincipal => getField<dynamic>('email_principal');
  set emailPrincipal(dynamic value) =>
      setField<dynamic>('email_principal', value);
}
