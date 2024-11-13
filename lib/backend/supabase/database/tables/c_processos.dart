import '../database.dart';

class CProcessosTable extends SupabaseTable<CProcessosRow> {
  @override
  String get tableName => 'c_processos';

  @override
  CProcessosRow createRow(Map<String, dynamic> data) => CProcessosRow(data);
}

class CProcessosRow extends SupabaseDataRow {
  CProcessosRow(super.data);

  @override
  SupabaseTable get table => CProcessosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get responsavel => getField<String>('responsavel');
  set responsavel(String? value) => setField<String>('responsavel', value);

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

  int? get fkGestor => getField<int>('fk_gestor');
  set fkGestor(int? value) => setField<int>('fk_gestor', value);

  int? get fkCargo => getField<int>('fk_cargo');
  set fkCargo(int? value) => setField<int>('fk_cargo', value);

  int? get fkCidade => getField<int>('fk_cidade');
  set fkCidade(int? value) => setField<int>('fk_cidade', value);

  String? get tipoContrato => getField<String>('tipo_contrato');
  set tipoContrato(String? value) => setField<String>('tipo_contrato', value);

  DateTime? get abertura => getField<DateTime>('abertura');
  set abertura(DateTime? value) => setField<DateTime>('abertura', value);

  DateTime? get divulgacao => getField<DateTime>('divulgacao');
  set divulgacao(DateTime? value) => setField<DateTime>('divulgacao', value);

  DateTime? get requisitante => getField<DateTime>('requisitante');
  set requisitante(DateTime? value) =>
      setField<DateTime>('requisitante', value);

  DateTime? get proposta => getField<DateTime>('proposta');
  set proposta(DateTime? value) => setField<DateTime>('proposta', value);

  DateTime? get reabertura => getField<DateTime>('reabertura');
  set reabertura(DateTime? value) => setField<DateTime>('reabertura', value);

  DateTime? get novaDivulgacao => getField<DateTime>('novaDivulgacao');
  set novaDivulgacao(DateTime? value) =>
      setField<DateTime>('novaDivulgacao', value);

  DateTime? get fechamento => getField<DateTime>('fechamento');
  set fechamento(DateTime? value) => setField<DateTime>('fechamento', value);

  DateTime? get admissao => getField<DateTime>('admissao');
  set admissao(DateTime? value) => setField<DateTime>('admissao', value);

  DateTime? get cadastro => getField<DateTime>('cadastro');
  set cadastro(DateTime? value) => setField<DateTime>('cadastro', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get observacoes => getField<String>('observacoes');
  set observacoes(String? value) => setField<String>('observacoes', value);

  bool? get equipamentos => getField<bool>('equipamentos');
  set equipamentos(bool? value) => setField<bool>('equipamentos', value);

  bool? get notebook => getField<bool>('notebook');
  set notebook(bool? value) => setField<bool>('notebook', value);

  bool? get celular => getField<bool>('celular');
  set celular(bool? value) => setField<bool>('celular', value);

  List<String> get equipamento => getListField<String>('equipamento');
  set equipamento(List<String>? value) =>
      setListField<String>('equipamento', value);
}
