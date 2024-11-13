import '../database.dart';

class CDesligamentoAdmTable extends SupabaseTable<CDesligamentoAdmRow> {
  @override
  String get tableName => 'c_desligamento_adm';

  @override
  CDesligamentoAdmRow createRow(Map<String, dynamic> data) =>
      CDesligamentoAdmRow(data);
}

class CDesligamentoAdmRow extends SupabaseDataRow {
  CDesligamentoAdmRow(super.data);

  @override
  SupabaseTable get table => CDesligamentoAdmTable();

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

  String? get questao7 => getField<String>('questao7');
  set questao7(String? value) => setField<String>('questao7', value);

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

  String? get questao16 => getField<String>('questao16');
  set questao16(String? value) => setField<String>('questao16', value);

  String? get questao17 => getField<String>('questao17');
  set questao17(String? value) => setField<String>('questao17', value);

  String? get questao18 => getField<String>('questao18');
  set questao18(String? value) => setField<String>('questao18', value);

  int? get questao19 => getField<int>('questao19');
  set questao19(int? value) => setField<int>('questao19', value);

  String? get questao20 => getField<String>('questao20');
  set questao20(String? value) => setField<String>('questao20', value);

  String? get questao21 => getField<String>('questao21');
  set questao21(String? value) => setField<String>('questao21', value);

  String? get questao22 => getField<String>('questao22');
  set questao22(String? value) => setField<String>('questao22', value);

  String? get questao23 => getField<String>('questao23');
  set questao23(String? value) => setField<String>('questao23', value);

  String? get questao24 => getField<String>('questao24');
  set questao24(String? value) => setField<String>('questao24', value);

  String? get questao25 => getField<String>('questao25');
  set questao25(String? value) => setField<String>('questao25', value);

  String? get questao26 => getField<String>('questao26');
  set questao26(String? value) => setField<String>('questao26', value);

  String? get questao27 => getField<String>('questao27');
  set questao27(String? value) => setField<String>('questao27', value);

  int? get questao28 => getField<int>('questao28');
  set questao28(int? value) => setField<int>('questao28', value);

  String? get questao29 => getField<String>('questao29');
  set questao29(String? value) => setField<String>('questao29', value);

  String? get questao30 => getField<String>('questao30');
  set questao30(String? value) => setField<String>('questao30', value);

  String? get questao31 => getField<String>('questao31');
  set questao31(String? value) => setField<String>('questao31', value);

  String? get questao32 => getField<String>('questao32');
  set questao32(String? value) => setField<String>('questao32', value);

  String? get questao33 => getField<String>('questao33');
  set questao33(String? value) => setField<String>('questao33', value);

  String? get questao34 => getField<String>('questao34');
  set questao34(String? value) => setField<String>('questao34', value);

  String? get questao35 => getField<String>('questao35');
  set questao35(String? value) => setField<String>('questao35', value);

  String? get questao36 => getField<String>('questao36');
  set questao36(String? value) => setField<String>('questao36', value);

  String? get questao37 => getField<String>('questao37');
  set questao37(String? value) => setField<String>('questao37', value);

  String? get questao38 => getField<String>('questao38');
  set questao38(String? value) => setField<String>('questao38', value);

  int? get questao39 => getField<int>('questao39');
  set questao39(int? value) => setField<int>('questao39', value);

  String? get questao40 => getField<String>('questao40');
  set questao40(String? value) => setField<String>('questao40', value);

  String? get questao41 => getField<String>('questao41');
  set questao41(String? value) => setField<String>('questao41', value);

  String? get questao42 => getField<String>('questao42');
  set questao42(String? value) => setField<String>('questao42', value);

  String? get questao43 => getField<String>('questao43');
  set questao43(String? value) => setField<String>('questao43', value);

  String? get questao44 => getField<String>('questao44');
  set questao44(String? value) => setField<String>('questao44', value);

  String? get questao45 => getField<String>('questao45');
  set questao45(String? value) => setField<String>('questao45', value);

  String? get questao46 => getField<String>('questao46');
  set questao46(String? value) => setField<String>('questao46', value);

  int? get questao47 => getField<int>('questao47');
  set questao47(int? value) => setField<int>('questao47', value);

  String? get questao48 => getField<String>('questao48');
  set questao48(String? value) => setField<String>('questao48', value);

  String? get questao49 => getField<String>('questao49');
  set questao49(String? value) => setField<String>('questao49', value);

  String? get questao50 => getField<String>('questao50');
  set questao50(String? value) => setField<String>('questao50', value);

  String? get questao51 => getField<String>('questao51');
  set questao51(String? value) => setField<String>('questao51', value);

  String? get questao52 => getField<String>('questao52');
  set questao52(String? value) => setField<String>('questao52', value);

  String? get questao53 => getField<String>('questao53');
  set questao53(String? value) => setField<String>('questao53', value);

  String? get questao54 => getField<String>('questao54');
  set questao54(String? value) => setField<String>('questao54', value);

  String? get questao55 => getField<String>('questao55');
  set questao55(String? value) => setField<String>('questao55', value);

  String? get questao56 => getField<String>('questao56');
  set questao56(String? value) => setField<String>('questao56', value);

  String? get observacoes => getField<String>('observacoes');
  set observacoes(String? value) => setField<String>('observacoes', value);

  DateTime? get admissao => getField<DateTime>('admissao');
  set admissao(DateTime? value) => setField<DateTime>('admissao', value);

  DateTime? get demissao => getField<DateTime>('demissao');
  set demissao(DateTime? value) => setField<DateTime>('demissao', value);

  DateTime? get criacao => getField<DateTime>('criacao');
  set criacao(DateTime? value) => setField<DateTime>('criacao', value);
}
