import '../database.dart';

class CDesligamentoRejeitadaTable
    extends SupabaseTable<CDesligamentoRejeitadaRow> {
  @override
  String get tableName => 'c_desligamento_rejeitada';

  @override
  CDesligamentoRejeitadaRow createRow(Map<String, dynamic> data) =>
      CDesligamentoRejeitadaRow(data);
}

class CDesligamentoRejeitadaRow extends SupabaseDataRow {
  CDesligamentoRejeitadaRow(super.data);

  @override
  SupabaseTable get table => CDesligamentoRejeitadaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get fkCargo => getField<int>('fk_cargo');
  set fkCargo(int? value) => setField<int>('fk_cargo', value);

  int? get fkGestor => getField<int>('fk_gestor');
  set fkGestor(int? value) => setField<int>('fk_gestor', value);

  int? get fkCidade => getField<int>('fk_cidade');
  set fkCidade(int? value) => setField<int>('fk_cidade', value);

  int? get fkEmpresa => getField<int>('fk_empresa');
  set fkEmpresa(int? value) => setField<int>('fk_empresa', value);

  int? get fkSetor => getField<int>('fk_setor');
  set fkSetor(int? value) => setField<int>('fk_setor', value);

  int? get fkNatureza => getField<int>('fk_natureza');
  set fkNatureza(int? value) => setField<int>('fk_natureza', value);

  int? get fkMotivo => getField<int>('fk_motivo');
  set fkMotivo(int? value) => setField<int>('fk_motivo', value);

  String? get observacoes => getField<String>('observacoes');
  set observacoes(String? value) => setField<String>('observacoes', value);

  String? get complemento => getField<String>('complemento');
  set complemento(String? value) => setField<String>('complemento', value);

  DateTime? get admissao => getField<DateTime>('admissao');
  set admissao(DateTime? value) => setField<DateTime>('admissao', value);

  DateTime? get demissao => getField<DateTime>('demissao');
  set demissao(DateTime? value) => setField<DateTime>('demissao', value);

  DateTime? get criacao => getField<DateTime>('criacao');
  set criacao(DateTime? value) => setField<DateTime>('criacao', value);

  String? get entrevista => getField<String>('entrevista');
  set entrevista(String? value) => setField<String>('entrevista', value);
}
