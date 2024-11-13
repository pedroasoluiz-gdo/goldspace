import '../database.dart';

class CDesligamentoProducaoQuestoesTable
    extends SupabaseTable<CDesligamentoProducaoQuestoesRow> {
  @override
  String get tableName => 'c_desligamento_producao_questoes';

  @override
  CDesligamentoProducaoQuestoesRow createRow(Map<String, dynamic> data) =>
      CDesligamentoProducaoQuestoesRow(data);
}

class CDesligamentoProducaoQuestoesRow extends SupabaseDataRow {
  CDesligamentoProducaoQuestoesRow(super.data);

  @override
  SupabaseTable get table => CDesligamentoProducaoQuestoesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get questao => getField<String>('questao');
  set questao(String? value) => setField<String>('questao', value);
}
