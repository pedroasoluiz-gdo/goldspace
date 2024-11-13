import '../database.dart';

class AUsersTable extends SupabaseTable<AUsersRow> {
  @override
  String get tableName => 'a_users';

  @override
  AUsersRow createRow(Map<String, dynamic> data) => AUsersRow(data);
}

class AUsersRow extends SupabaseDataRow {
  AUsersRow(super.data);

  @override
  SupabaseTable get table => AUsersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get created => getField<DateTime>('created')!;
  set created(DateTime value) => setField<DateTime>('created', value);

  String? get fullName => getField<String>('fullName');
  set fullName(String? value) => setField<String>('fullName', value);

  String? get picture => getField<String>('picture');
  set picture(String? value) => setField<String>('picture', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);
}
