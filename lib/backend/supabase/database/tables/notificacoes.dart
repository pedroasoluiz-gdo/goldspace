import '../database.dart';

class NotificacoesTable extends SupabaseTable<NotificacoesRow> {
  @override
  String get tableName => 'notificacoes';

  @override
  NotificacoesRow createRow(Map<String, dynamic> data) => NotificacoesRow(data);
}

class NotificacoesRow extends SupabaseDataRow {
  NotificacoesRow(super.data);

  @override
  SupabaseTable get table => NotificacoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get fkUsuariosEnvio => getField<String>('fk_usuarios_envio');
  set fkUsuariosEnvio(String? value) =>
      setField<String>('fk_usuarios_envio', value);

  String? get texto => getField<String>('texto');
  set texto(String? value) => setField<String>('texto', value);

  bool? get visto => getField<bool>('visto');
  set visto(bool? value) => setField<bool>('visto', value);

  bool? get liked => getField<bool>('liked');
  set liked(bool? value) => setField<bool>('liked', value);
}
