import '../database.dart';

class BMensagensTable extends SupabaseTable<BMensagensRow> {
  @override
  String get tableName => 'b_mensagens';

  @override
  BMensagensRow createRow(Map<String, dynamic> data) => BMensagensRow(data);
}

class BMensagensRow extends SupabaseDataRow {
  BMensagensRow(super.data);

  @override
  SupabaseTable get table => BMensagensTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get texto => getField<String>('texto');
  set texto(String? value) => setField<String>('texto', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  bool? get lida => getField<bool>('lida');
  set lida(bool? value) => setField<bool>('lida', value);

  String? get fkConversa => getField<String>('fkConversa');
  set fkConversa(String? value) => setField<String>('fkConversa', value);

  String? get fkUser => getField<String>('fkUser');
  set fkUser(String? value) => setField<String>('fkUser', value);

  DateTime? get criacao => getField<DateTime>('criacao');
  set criacao(DateTime? value) => setField<DateTime>('criacao', value);

  bool? get primeiraDia => getField<bool>('primeiraDia');
  set primeiraDia(bool? value) => setField<bool>('primeiraDia', value);
}
