import '../database.dart';

class CCanaisXprocessoTable extends SupabaseTable<CCanaisXprocessoRow> {
  @override
  String get tableName => 'c_canaisXprocesso';

  @override
  CCanaisXprocessoRow createRow(Map<String, dynamic> data) =>
      CCanaisXprocessoRow(data);
}

class CCanaisXprocessoRow extends SupabaseDataRow {
  CCanaisXprocessoRow(super.data);

  @override
  SupabaseTable get table => CCanaisXprocessoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get fkProcesso => getField<int>('fk_processo')!;
  set fkProcesso(int value) => setField<int>('fk_processo', value);

  int? get fkCanal => getField<int>('fk_canal');
  set fkCanal(int? value) => setField<int>('fk_canal', value);
}
