import '../database.dart';

class CColaboradoresHistoricoTable
    extends SupabaseTable<CColaboradoresHistoricoRow> {
  @override
  String get tableName => 'c_colaboradores_historico';

  @override
  CColaboradoresHistoricoRow createRow(Map<String, dynamic> data) =>
      CColaboradoresHistoricoRow(data);
}

class CColaboradoresHistoricoRow extends SupabaseDataRow {
  CColaboradoresHistoricoRow(super.data);

  @override
  SupabaseTable get table => CColaboradoresHistoricoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get fkColab => getField<int>('fk_colab');
  set fkColab(int? value) => setField<int>('fk_colab', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  DateTime get criacao => getField<DateTime>('criacao')!;
  set criacao(DateTime value) => setField<DateTime>('criacao', value);

  String? get operacao => getField<String>('operacao');
  set operacao(String? value) => setField<String>('operacao', value);

  String? get campo => getField<String>('campo');
  set campo(String? value) => setField<String>('campo', value);

  String? get anterior => getField<String>('anterior');
  set anterior(String? value) => setField<String>('anterior', value);

  String? get posterior => getField<String>('posterior');
  set posterior(String? value) => setField<String>('posterior', value);
}
