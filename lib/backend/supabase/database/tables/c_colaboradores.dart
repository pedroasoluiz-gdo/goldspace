import '../database.dart';

class CColaboradoresTable extends SupabaseTable<CColaboradoresRow> {
  @override
  String get tableName => 'c_colaboradores';

  @override
  CColaboradoresRow createRow(Map<String, dynamic> data) =>
      CColaboradoresRow(data);
}

class CColaboradoresRow extends SupabaseDataRow {
  CColaboradoresRow(super.data);

  @override
  SupabaseTable get table => CColaboradoresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  DateTime? get admissao => getField<DateTime>('admissao');
  set admissao(DateTime? value) => setField<DateTime>('admissao', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  DateTime? get demissao => getField<DateTime>('demissao');
  set demissao(DateTime? value) => setField<DateTime>('demissao', value);

  String? get processo => getField<String>('processo');
  set processo(String? value) => setField<String>('processo', value);

  String? get entrada => getField<String>('entrada');
  set entrada(String? value) => setField<String>('entrada', value);

  String? get saida => getField<String>('saida');
  set saida(String? value) => setField<String>('saida', value);

  int? get fkCidade => getField<int>('fk_cidade');
  set fkCidade(int? value) => setField<int>('fk_cidade', value);

  int? get fkEmpresa => getField<int>('fk_empresa');
  set fkEmpresa(int? value) => setField<int>('fk_empresa', value);

  int? get fkSetor => getField<int>('fk_setor');
  set fkSetor(int? value) => setField<int>('fk_setor', value);

  int? get fkCargo => getField<int>('fk_cargo');
  set fkCargo(int? value) => setField<int>('fk_cargo', value);

  int? get fkGestor => getField<int>('fk_gestor');
  set fkGestor(int? value) => setField<int>('fk_gestor', value);

  String? get contrato => getField<String>('contrato');
  set contrato(String? value) => setField<String>('contrato', value);

  String? get sexo => getField<String>('sexo');
  set sexo(String? value) => setField<String>('sexo', value);

  String? get fkUser => getField<String>('fkUser');
  set fkUser(String? value) => setField<String>('fkUser', value);
}
