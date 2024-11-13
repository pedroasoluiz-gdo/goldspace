import '../database.dart';

class VwNotificacoesTable extends SupabaseTable<VwNotificacoesRow> {
  @override
  String get tableName => 'vw_notificacoes';

  @override
  VwNotificacoesRow createRow(Map<String, dynamic> data) =>
      VwNotificacoesRow(data);
}

class VwNotificacoesRow extends SupabaseDataRow {
  VwNotificacoesRow(super.data);

  @override
  SupabaseTable get table => VwNotificacoesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get texto => getField<String>('texto');
  set texto(String? value) => setField<String>('texto', value);

  bool? get visto => getField<bool>('visto');
  set visto(bool? value) => setField<bool>('visto', value);

  String? get picture => getField<String>('picture');
  set picture(String? value) => setField<String>('picture', value);

  bool? get liked => getField<bool>('liked');
  set liked(bool? value) => setField<bool>('liked', value);
}
