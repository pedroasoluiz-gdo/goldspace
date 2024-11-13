import '../database.dart';

class CPadRespostasPontosTable extends SupabaseTable<CPadRespostasPontosRow> {
  @override
  String get tableName => 'c_pad_respostas_pontos';

  @override
  CPadRespostasPontosRow createRow(Map<String, dynamic> data) =>
      CPadRespostasPontosRow(data);
}

class CPadRespostasPontosRow extends SupabaseDataRow {
  CPadRespostasPontosRow(super.data);

  @override
  SupabaseTable get table => CPadRespostasPontosTable();

  int get fkPad => getField<int>('fk_pad')!;
  set fkPad(int value) => setField<int>('fk_pad', value);

  String get descricao => getField<String>('descricao')!;
  set descricao(String value) => setField<String>('descricao', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);
}
