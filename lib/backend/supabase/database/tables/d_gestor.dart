import '../database.dart';

class DGestorTable extends SupabaseTable<DGestorRow> {
  @override
  String get tableName => 'd_gestor';

  @override
  DGestorRow createRow(Map<String, dynamic> data) => DGestorRow(data);
}

class DGestorRow extends SupabaseDataRow {
  DGestorRow(super.data);

  @override
  SupabaseTable get table => DGestorTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  DateTime get criacao => getField<DateTime>('criacao')!;
  set criacao(DateTime value) => setField<DateTime>('criacao', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);
}
