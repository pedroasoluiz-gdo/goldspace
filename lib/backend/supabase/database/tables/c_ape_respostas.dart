import '../database.dart';

class CApeRespostasTable extends SupabaseTable<CApeRespostasRow> {
  @override
  String get tableName => 'c_ape_respostas';

  @override
  CApeRespostasRow createRow(Map<String, dynamic> data) =>
      CApeRespostasRow(data);
}

class CApeRespostasRow extends SupabaseDataRow {
  CApeRespostasRow(super.data);

  @override
  SupabaseTable get table => CApeRespostasTable();

  DateTime? get cadastro => getField<DateTime>('cadastro');
  set cadastro(DateTime? value) => setField<DateTime>('cadastro', value);

  int get fkApe => getField<int>('fk_ape')!;
  set fkApe(int value) => setField<int>('fk_ape', value);

  int? get fkColab => getField<int>('fk_colab');
  set fkColab(int? value) => setField<int>('fk_colab', value);

  int? get periodo => getField<int>('periodo');
  set periodo(int? value) => setField<int>('periodo', value);

  bool? get manterContrato => getField<bool>('manterContrato');
  set manterContrato(bool? value) => setField<bool>('manterContrato', value);

  bool? get questao2 => getField<bool>('questao2');
  set questao2(bool? value) => setField<bool>('questao2', value);

  String? get questao3 => getField<String>('questao3');
  set questao3(String? value) => setField<String>('questao3', value);

  int? get questao4 => getField<int>('questao4');
  set questao4(int? value) => setField<int>('questao4', value);

  int? get questao5 => getField<int>('questao5');
  set questao5(int? value) => setField<int>('questao5', value);

  int? get questao6 => getField<int>('questao6');
  set questao6(int? value) => setField<int>('questao6', value);

  int? get questao7 => getField<int>('questao7');
  set questao7(int? value) => setField<int>('questao7', value);

  int? get questao8 => getField<int>('questao8');
  set questao8(int? value) => setField<int>('questao8', value);

  int? get questao9 => getField<int>('questao9');
  set questao9(int? value) => setField<int>('questao9', value);

  int? get questao10 => getField<int>('questao10');
  set questao10(int? value) => setField<int>('questao10', value);

  int? get questao11 => getField<int>('questao11');
  set questao11(int? value) => setField<int>('questao11', value);

  int? get questao12 => getField<int>('questao12');
  set questao12(int? value) => setField<int>('questao12', value);

  int? get questao13 => getField<int>('questao13');
  set questao13(int? value) => setField<int>('questao13', value);

  int? get questao14 => getField<int>('questao14');
  set questao14(int? value) => setField<int>('questao14', value);

  int? get questao15 => getField<int>('questao15');
  set questao15(int? value) => setField<int>('questao15', value);

  int? get questao16 => getField<int>('questao16');
  set questao16(int? value) => setField<int>('questao16', value);

  int? get questao17 => getField<int>('questao17');
  set questao17(int? value) => setField<int>('questao17', value);

  int? get questao18 => getField<int>('questao18');
  set questao18(int? value) => setField<int>('questao18', value);

  int? get questao19 => getField<int>('questao19');
  set questao19(int? value) => setField<int>('questao19', value);

  int? get questao20 => getField<int>('questao20');
  set questao20(int? value) => setField<int>('questao20', value);

  int? get questao21 => getField<int>('questao21');
  set questao21(int? value) => setField<int>('questao21', value);

  int? get questao22 => getField<int>('questao22');
  set questao22(int? value) => setField<int>('questao22', value);

  int? get questao23 => getField<int>('questao23');
  set questao23(int? value) => setField<int>('questao23', value);

  String? get questao24 => getField<String>('questao24');
  set questao24(String? value) => setField<String>('questao24', value);

  String? get questao25 => getField<String>('questao25');
  set questao25(String? value) => setField<String>('questao25', value);

  String? get questao26 => getField<String>('questao26');
  set questao26(String? value) => setField<String>('questao26', value);

  String? get questao27 => getField<String>('questao27');
  set questao27(String? value) => setField<String>('questao27', value);

  String? get questao28 => getField<String>('questao28');
  set questao28(String? value) => setField<String>('questao28', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);
}
