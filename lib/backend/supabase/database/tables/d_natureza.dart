import '../database.dart';

class DNaturezaTable extends SupabaseTable<DNaturezaRow> {
  @override
  String get tableName => 'd_natureza';

  @override
  DNaturezaRow createRow(Map<String, dynamic> data) => DNaturezaRow(data);
}

class DNaturezaRow extends SupabaseDataRow {
  DNaturezaRow(super.data);

  @override
  SupabaseTable get table => DNaturezaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  DateTime get criacao => getField<DateTime>('criacao')!;
  set criacao(DateTime value) => setField<DateTime>('criacao', value);

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);
}
