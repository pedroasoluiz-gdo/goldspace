import '../database.dart';

class CSemprocessoTable extends SupabaseTable<CSemprocessoRow> {
  @override
  String get tableName => 'c_semprocesso';

  @override
  CSemprocessoRow createRow(Map<String, dynamic> data) => CSemprocessoRow(data);
}

class CSemprocessoRow extends SupabaseDataRow {
  CSemprocessoRow(super.data);

  @override
  SupabaseTable get table => CSemprocessoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get colaborador => getField<String>('colaborador');
  set colaborador(String? value) => setField<String>('colaborador', value);

  String? get responsavel => getField<String>('responsavel');
  set responsavel(String? value) => setField<String>('responsavel', value);

  String? get contrato => getField<String>('contrato');
  set contrato(String? value) => setField<String>('contrato', value);

  String? get motivo => getField<String>('motivo');
  set motivo(String? value) => setField<String>('motivo', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get substituido => getField<String>('substituido');
  set substituido(String? value) => setField<String>('substituido', value);

  String? get tipoRS => getField<String>('tipoRS');
  set tipoRS(String? value) => setField<String>('tipoRS', value);

  int? get fkEmpresa => getField<int>('fk_empresa');
  set fkEmpresa(int? value) => setField<int>('fk_empresa', value);

  int? get fkSetor => getField<int>('fk_setor');
  set fkSetor(int? value) => setField<int>('fk_setor', value);

  int? get fkCargo => getField<int>('fk_cargo');
  set fkCargo(int? value) => setField<int>('fk_cargo', value);

  int? get fkCidade => getField<int>('fk_cidade');
  set fkCidade(int? value) => setField<int>('fk_cidade', value);

  int? get fkGestor => getField<int>('fk_gestor');
  set fkGestor(int? value) => setField<int>('fk_gestor', value);

  String? get observacoes => getField<String>('observacoes');
  set observacoes(String? value) => setField<String>('observacoes', value);

  DateTime? get admissao => getField<DateTime>('admissao');
  set admissao(DateTime? value) => setField<DateTime>('admissao', value);

  DateTime? get cadastro => getField<DateTime>('cadastro');
  set cadastro(DateTime? value) => setField<DateTime>('cadastro', value);

  bool? get equipamentos => getField<bool>('equipamentos');
  set equipamentos(bool? value) => setField<bool>('equipamentos', value);

  bool? get notebook => getField<bool>('notebook');
  set notebook(bool? value) => setField<bool>('notebook', value);

  bool? get celular => getField<bool>('celular');
  set celular(bool? value) => setField<bool>('celular', value);

  String? get outros => getField<String>('outros');
  set outros(String? value) => setField<String>('outros', value);
}
