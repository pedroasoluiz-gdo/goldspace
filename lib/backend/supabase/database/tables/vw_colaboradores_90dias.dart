import '../database.dart';

class VwColaboradores90diasTable
    extends SupabaseTable<VwColaboradores90diasRow> {
  @override
  String get tableName => 'vw_colaboradores_90dias';

  @override
  VwColaboradores90diasRow createRow(Map<String, dynamic> data) =>
      VwColaboradores90diasRow(data);
}

class VwColaboradores90diasRow extends SupabaseDataRow {
  VwColaboradores90diasRow(super.data);

  @override
  SupabaseTable get table => VwColaboradores90diasTable();

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get fkGestor => getField<int>('fk_gestor');
  set fkGestor(int? value) => setField<int>('fk_gestor', value);

  String? get gestor => getField<String>('gestor');
  set gestor(String? value) => setField<String>('gestor', value);

  int? get fkEmpresa => getField<int>('fk_empresa');
  set fkEmpresa(int? value) => setField<int>('fk_empresa', value);

  String? get empresa => getField<String>('empresa');
  set empresa(String? value) => setField<String>('empresa', value);

  int? get fkCargo => getField<int>('fk_cargo');
  set fkCargo(int? value) => setField<int>('fk_cargo', value);

  String? get cargo => getField<String>('cargo');
  set cargo(String? value) => setField<String>('cargo', value);

  int? get fkColab => getField<int>('fk_colab');
  set fkColab(int? value) => setField<int>('fk_colab', value);

  DateTime? get admissao => getField<DateTime>('admissao');
  set admissao(DateTime? value) => setField<DateTime>('admissao', value);

  int? get periodoape => getField<int>('periodoape');
  set periodoape(int? value) => setField<int>('periodoape', value);
}
