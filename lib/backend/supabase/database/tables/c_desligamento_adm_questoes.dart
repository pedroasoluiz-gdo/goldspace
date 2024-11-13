import '../database.dart';

class CDesligamentoAdmQuestoesTable
    extends SupabaseTable<CDesligamentoAdmQuestoesRow> {
  @override
  String get tableName => 'c_desligamento_adm_questoes';

  @override
  CDesligamentoAdmQuestoesRow createRow(Map<String, dynamic> data) =>
      CDesligamentoAdmQuestoesRow(data);
}

class CDesligamentoAdmQuestoesRow extends SupabaseDataRow {
  CDesligamentoAdmQuestoesRow(super.data);

  @override
  SupabaseTable get table => CDesligamentoAdmQuestoesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get questoes => getField<String>('questoes');
  set questoes(String? value) => setField<String>('questoes', value);
}
