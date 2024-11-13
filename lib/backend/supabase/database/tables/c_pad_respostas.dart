import '../database.dart';

class CPadRespostasTable extends SupabaseTable<CPadRespostasRow> {
  @override
  String get tableName => 'c_pad_respostas';

  @override
  CPadRespostasRow createRow(Map<String, dynamic> data) =>
      CPadRespostasRow(data);
}

class CPadRespostasRow extends SupabaseDataRow {
  CPadRespostasRow(super.data);

  @override
  SupabaseTable get table => CPadRespostasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get cadastro => getField<DateTime>('cadastro')!;
  set cadastro(DateTime value) => setField<DateTime>('cadastro', value);

  int? get fkPad => getField<int>('fk_pad');
  set fkPad(int? value) => setField<int>('fk_pad', value);

  bool? get questao1 => getField<bool>('questao1');
  set questao1(bool? value) => setField<bool>('questao1', value);

  DateTime? get questao2 => getField<DateTime>('questao2');
  set questao2(DateTime? value) => setField<DateTime>('questao2', value);

  int? get questao3 => getField<int>('questao3');
  set questao3(int? value) => setField<int>('questao3', value);

  String? get questao4 => getField<String>('questao4');
  set questao4(String? value) => setField<String>('questao4', value);

  int? get questao5 => getField<int>('questao5');
  set questao5(int? value) => setField<int>('questao5', value);

  int? get questao6 => getField<int>('questao6');
  set questao6(int? value) => setField<int>('questao6', value);

  String? get questao7 => getField<String>('questao7');
  set questao7(String? value) => setField<String>('questao7', value);

  bool? get valida => getField<bool>('valida');
  set valida(bool? value) => setField<bool>('valida', value);

  int? get questao8 => getField<int>('questao8');
  set questao8(int? value) => setField<int>('questao8', value);

  bool? get coerencia => getField<bool>('coerencia');
  set coerencia(bool? value) => setField<bool>('coerencia', value);
}
