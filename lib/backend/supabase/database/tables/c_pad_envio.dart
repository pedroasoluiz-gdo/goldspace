import '../database.dart';

class CPadEnvioTable extends SupabaseTable<CPadEnvioRow> {
  @override
  String get tableName => 'c_pad_envio';

  @override
  CPadEnvioRow createRow(Map<String, dynamic> data) => CPadEnvioRow(data);
}

class CPadEnvioRow extends SupabaseDataRow {
  CPadEnvioRow(super.data);

  @override
  SupabaseTable get table => CPadEnvioTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get emailGestor => getField<String>('email_gestor');
  set emailGestor(String? value) => setField<String>('email_gestor', value);

  String? get vigencia => getField<String>('vigencia');
  set vigencia(String? value) => setField<String>('vigencia', value);

  int? get fkGestor => getField<int>('fk_gestor');
  set fkGestor(int? value) => setField<int>('fk_gestor', value);

  int? get fkEmpresa => getField<int>('fk_empresa');
  set fkEmpresa(int? value) => setField<int>('fk_empresa', value);

  int? get fkCargo => getField<int>('fk_cargo');
  set fkCargo(int? value) => setField<int>('fk_cargo', value);

  DateTime? get vencimento => getField<DateTime>('vencimento');
  set vencimento(DateTime? value) => setField<DateTime>('vencimento', value);

  DateTime? get criacao => getField<DateTime>('criacao');
  set criacao(DateTime? value) => setField<DateTime>('criacao', value);

  int? get fkColab => getField<int>('fk_colab');
  set fkColab(int? value) => setField<int>('fk_colab', value);

  bool? get respondido => getField<bool>('respondido');
  set respondido(bool? value) => setField<bool>('respondido', value);
}
