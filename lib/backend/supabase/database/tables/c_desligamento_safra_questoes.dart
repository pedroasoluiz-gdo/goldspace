import '../database.dart';

class CDesligamentoSafraQuestoesTable
    extends SupabaseTable<CDesligamentoSafraQuestoesRow> {
  @override
  String get tableName => 'c_desligamento_safra_questoes';

  @override
  CDesligamentoSafraQuestoesRow createRow(Map<String, dynamic> data) =>
      CDesligamentoSafraQuestoesRow(data);
}

class CDesligamentoSafraQuestoesRow extends SupabaseDataRow {
  CDesligamentoSafraQuestoesRow(super.data);

  @override
  SupabaseTable get table => CDesligamentoSafraQuestoesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get questao => getField<String>('questao');
  set questao(String? value) => setField<String>('questao', value);
}
