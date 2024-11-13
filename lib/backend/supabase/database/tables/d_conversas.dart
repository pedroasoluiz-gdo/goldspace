import '../database.dart';

class DConversasTable extends SupabaseTable<DConversasRow> {
  @override
  String get tableName => 'd_conversas';

  @override
  DConversasRow createRow(Map<String, dynamic> data) => DConversasRow(data);
}

class DConversasRow extends SupabaseDataRow {
  DConversasRow(super.data);

  @override
  SupabaseTable get table => DConversasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get envio => getField<DateTime>('envio')!;
  set envio(DateTime value) => setField<DateTime>('envio', value);

  String? get fkUsuarioEnvio => getField<String>('fkUsuario_envio');
  set fkUsuarioEnvio(String? value) =>
      setField<String>('fkUsuario_envio', value);

  String? get fkUsuarioDestino => getField<String>('fkUsuario_destino');
  set fkUsuarioDestino(String? value) =>
      setField<String>('fkUsuario_destino', value);

  String? get texto => getField<String>('texto');
  set texto(String? value) => setField<String>('texto', value);

  bool? get visto => getField<bool>('visto');
  set visto(bool? value) => setField<bool>('visto', value);

  String? get fkConversa => getField<String>('fk_Conversa');
  set fkConversa(String? value) => setField<String>('fk_Conversa', value);

  bool? get primeiraDia => getField<bool>('primeiraDia');
  set primeiraDia(bool? value) => setField<bool>('primeiraDia', value);
}
