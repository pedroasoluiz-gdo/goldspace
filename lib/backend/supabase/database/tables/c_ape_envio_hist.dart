import '../database.dart';

class CApeEnvioHistTable extends SupabaseTable<CApeEnvioHistRow> {
  @override
  String get tableName => 'c_ape_envio_hist';

  @override
  CApeEnvioHistRow createRow(Map<String, dynamic> data) =>
      CApeEnvioHistRow(data);
}

class CApeEnvioHistRow extends SupabaseDataRow {
  CApeEnvioHistRow(super.data);

  @override
  SupabaseTable get table => CApeEnvioHistTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get fkApe => getField<int>('fk_ape');
  set fkApe(int? value) => setField<int>('fk_ape', value);

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get operacao => getField<String>('operacao');
  set operacao(String? value) => setField<String>('operacao', value);

  DateTime? get criacao => getField<DateTime>('criacao');
  set criacao(DateTime? value) => setField<DateTime>('criacao', value);
}
