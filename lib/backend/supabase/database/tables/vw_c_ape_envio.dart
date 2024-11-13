import '../database.dart';

class VwCApeEnvioTable extends SupabaseTable<VwCApeEnvioRow> {
  @override
  String get tableName => 'vw_c_ape_envio';

  @override
  VwCApeEnvioRow createRow(Map<String, dynamic> data) => VwCApeEnvioRow(data);
}

class VwCApeEnvioRow extends SupabaseDataRow {
  VwCApeEnvioRow(super.data);

  @override
  SupabaseTable get table => VwCApeEnvioTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get responsavel => getField<String>('responsavel');
  set responsavel(String? value) => setField<String>('responsavel', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get gestor => getField<String>('gestor');
  set gestor(String? value) => setField<String>('gestor', value);

  String? get empresa => getField<String>('empresa');
  set empresa(String? value) => setField<String>('empresa', value);

  String? get cargo => getField<String>('cargo');
  set cargo(String? value) => setField<String>('cargo', value);

  int? get periodo => getField<int>('periodo');
  set periodo(int? value) => setField<int>('periodo', value);

  DateTime? get vencimento => getField<DateTime>('vencimento');
  set vencimento(DateTime? value) => setField<DateTime>('vencimento', value);

  DateTime? get criacao => getField<DateTime>('criacao');
  set criacao(DateTime? value) => setField<DateTime>('criacao', value);

  int? get fkColab => getField<int>('fk_colab');
  set fkColab(int? value) => setField<int>('fk_colab', value);

  bool? get respondido => getField<bool>('respondido');
  set respondido(bool? value) => setField<bool>('respondido', value);
}
