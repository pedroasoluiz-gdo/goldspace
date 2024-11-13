import '../database.dart';

class DSetorTable extends SupabaseTable<DSetorRow> {
  @override
  String get tableName => 'd_setor';

  @override
  DSetorRow createRow(Map<String, dynamic> data) => DSetorRow(data);
}

class DSetorRow extends SupabaseDataRow {
  DSetorRow(super.data);

  @override
  SupabaseTable get table => DSetorTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  DateTime get criacao => getField<DateTime>('criacao')!;
  set criacao(DateTime value) => setField<DateTime>('criacao', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);
}
