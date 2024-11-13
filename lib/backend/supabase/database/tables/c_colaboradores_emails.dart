import '../database.dart';

class CColaboradoresEmailsTable extends SupabaseTable<CColaboradoresEmailsRow> {
  @override
  String get tableName => 'c_colaboradores_emails';

  @override
  CColaboradoresEmailsRow createRow(Map<String, dynamic> data) =>
      CColaboradoresEmailsRow(data);
}

class CColaboradoresEmailsRow extends SupabaseDataRow {
  CColaboradoresEmailsRow(super.data);

  @override
  SupabaseTable get table => CColaboradoresEmailsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get cadastro => getField<DateTime>('cadastro')!;
  set cadastro(DateTime value) => setField<DateTime>('cadastro', value);

  int? get fkColaborador => getField<int>('fk_colaborador');
  set fkColaborador(int? value) => setField<int>('fk_colaborador', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);
}
