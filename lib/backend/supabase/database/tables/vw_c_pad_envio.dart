import '../database.dart';

class VwCPadEnvioTable extends SupabaseTable<VwCPadEnvioRow> {
  @override
  String get tableName => 'vw_c_pad_envio';

  @override
  VwCPadEnvioRow createRow(Map<String, dynamic> data) => VwCPadEnvioRow(data);
}

class VwCPadEnvioRow extends SupabaseDataRow {
  VwCPadEnvioRow(super.data);

  @override
  SupabaseTable get table => VwCPadEnvioTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get gestor => getField<String>('gestor');
  set gestor(String? value) => setField<String>('gestor', value);

  String? get emailGestor => getField<String>('email_gestor');
  set emailGestor(String? value) => setField<String>('email_gestor', value);

  String? get empresa => getField<String>('empresa');
  set empresa(String? value) => setField<String>('empresa', value);

  String? get cargo => getField<String>('cargo');
  set cargo(String? value) => setField<String>('cargo', value);

  String? get vigencia => getField<String>('vigencia');
  set vigencia(String? value) => setField<String>('vigencia', value);

  DateTime? get vencimento => getField<DateTime>('vencimento');
  set vencimento(DateTime? value) => setField<DateTime>('vencimento', value);

  DateTime? get criacao => getField<DateTime>('criacao');
  set criacao(DateTime? value) => setField<DateTime>('criacao', value);

  int? get fkColab => getField<int>('fk_colab');
  set fkColab(int? value) => setField<int>('fk_colab', value);

  bool? get respondido => getField<bool>('respondido');
  set respondido(bool? value) => setField<bool>('respondido', value);
}
