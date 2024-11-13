import '../database.dart';

class ViewColaboradoresTable extends SupabaseTable<ViewColaboradoresRow> {
  @override
  String get tableName => 'view_colaboradores';

  @override
  ViewColaboradoresRow createRow(Map<String, dynamic> data) =>
      ViewColaboradoresRow(data);
}

class ViewColaboradoresRow extends SupabaseDataRow {
  ViewColaboradoresRow(super.data);

  @override
  SupabaseTable get table => ViewColaboradoresTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get gestor => getField<String>('gestor');
  set gestor(String? value) => setField<String>('gestor', value);
}
