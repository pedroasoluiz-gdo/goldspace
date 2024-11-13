import '../database.dart';

class ViewColaboradoresSimple1Table
    extends SupabaseTable<ViewColaboradoresSimple1Row> {
  @override
  String get tableName => 'view_colaboradores_simple1';

  @override
  ViewColaboradoresSimple1Row createRow(Map<String, dynamic> data) =>
      ViewColaboradoresSimple1Row(data);
}

class ViewColaboradoresSimple1Row extends SupabaseDataRow {
  ViewColaboradoresSimple1Row(super.data);

  @override
  SupabaseTable get table => ViewColaboradoresSimple1Table();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);
}
