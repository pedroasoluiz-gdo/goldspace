import '../database.dart';

class CDesligamentoSafraTable extends SupabaseTable<CDesligamentoSafraRow> {
  @override
  String get tableName => 'c_desligamento_safra';

  @override
  CDesligamentoSafraRow createRow(Map<String, dynamic> data) =>
      CDesligamentoSafraRow(data);
}

class CDesligamentoSafraRow extends SupabaseDataRow {
  CDesligamentoSafraRow(super.data);

  @override
  SupabaseTable get table => CDesligamentoSafraTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get fkSetor => getField<int>('fk_setor');
  set fkSetor(int? value) => setField<int>('fk_setor', value);

  int? get fkCargo => getField<int>('fk_cargo');
  set fkCargo(int? value) => setField<int>('fk_cargo', value);

  int? get fkGestor => getField<int>('fk_gestor');
  set fkGestor(int? value) => setField<int>('fk_gestor', value);

  int? get fkCidade => getField<int>('fk_cidade');
  set fkCidade(int? value) => setField<int>('fk_cidade', value);

  int? get fkEmpresa => getField<int>('fk_empresa');
  set fkEmpresa(int? value) => setField<int>('fk_empresa', value);

  int? get fkNatureza => getField<int>('fk_natureza');
  set fkNatureza(int? value) => setField<int>('fk_natureza', value);

  int? get fkMotivo => getField<int>('fk_motivo');
  set fkMotivo(int? value) => setField<int>('fk_motivo', value);

  String? get complementoMotivo => getField<String>('complemento_motivo');
  set complementoMotivo(String? value) =>
      setField<String>('complemento_motivo', value);

  int? get questao1 => getField<int>('questao1');
  set questao1(int? value) => setField<int>('questao1', value);

  int? get questao2 => getField<int>('questao2');
  set questao2(int? value) => setField<int>('questao2', value);

  String? get questao3 => getField<String>('questao3');
  set questao3(String? value) => setField<String>('questao3', value);

  String? get questao4 => getField<String>('questao4');
  set questao4(String? value) => setField<String>('questao4', value);

  String? get questao5 => getField<String>('questao5');
  set questao5(String? value) => setField<String>('questao5', value);

  String? get questao6 => getField<String>('questao6');
  set questao6(String? value) => setField<String>('questao6', value);

  int? get questao7 => getField<int>('questao7');
  set questao7(int? value) => setField<int>('questao7', value);

  String? get questao8 => getField<String>('questao8');
  set questao8(String? value) => setField<String>('questao8', value);

  String? get questao9 => getField<String>('questao9');
  set questao9(String? value) => setField<String>('questao9', value);

  String? get questao10 => getField<String>('questao10');
  set questao10(String? value) => setField<String>('questao10', value);

  String? get questao11 => getField<String>('questao11');
  set questao11(String? value) => setField<String>('questao11', value);

  String? get questao12 => getField<String>('questao12');
  set questao12(String? value) => setField<String>('questao12', value);

  String? get questao13 => getField<String>('questao13');
  set questao13(String? value) => setField<String>('questao13', value);

  String? get questao14 => getField<String>('questao14');
  set questao14(String? value) => setField<String>('questao14', value);

  String? get questao15 => getField<String>('questao15');
  set questao15(String? value) => setField<String>('questao15', value);

  int? get questao16 => getField<int>('questao16');
  set questao16(int? value) => setField<int>('questao16', value);

  String? get questao17 => getField<String>('questao17');
  set questao17(String? value) => setField<String>('questao17', value);

  String? get questao18 => getField<String>('questao18');
  set questao18(String? value) => setField<String>('questao18', value);

  String? get questao19 => getField<String>('questao19');
  set questao19(String? value) => setField<String>('questao19', value);

  String? get questao20 => getField<String>('questao20');
  set questao20(String? value) => setField<String>('questao20', value);

  String? get questao21 => getField<String>('questao21');
  set questao21(String? value) => setField<String>('questao21', value);

  String? get questao22 => getField<String>('questao22');
  set questao22(String? value) => setField<String>('questao22', value);

  String? get questao23 => getField<String>('questao23');
  set questao23(String? value) => setField<String>('questao23', value);

  int? get questao24 => getField<int>('questao24');
  set questao24(int? value) => setField<int>('questao24', value);

  String? get questao25 => getField<String>('questao25');
  set questao25(String? value) => setField<String>('questao25', value);

  String? get questao26 => getField<String>('questao26');
  set questao26(String? value) => setField<String>('questao26', value);

  String? get observacoes => getField<String>('observacoes');
  set observacoes(String? value) => setField<String>('observacoes', value);

  DateTime? get admissao => getField<DateTime>('admissao');
  set admissao(DateTime? value) => setField<DateTime>('admissao', value);

  DateTime? get demissao => getField<DateTime>('demissao');
  set demissao(DateTime? value) => setField<DateTime>('demissao', value);

  DateTime? get criacao => getField<DateTime>('criacao');
  set criacao(DateTime? value) => setField<DateTime>('criacao', value);
}
