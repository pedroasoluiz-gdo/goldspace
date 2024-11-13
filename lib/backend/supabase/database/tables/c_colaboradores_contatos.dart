import '../database.dart';

class CColaboradoresContatosTable
    extends SupabaseTable<CColaboradoresContatosRow> {
  @override
  String get tableName => 'c_colaboradores_contatos';

  @override
  CColaboradoresContatosRow createRow(Map<String, dynamic> data) =>
      CColaboradoresContatosRow(data);
}

class CColaboradoresContatosRow extends SupabaseDataRow {
  CColaboradoresContatosRow(super.data);

  @override
  SupabaseTable get table => CColaboradoresContatosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get cadastro => getField<DateTime>('cadastro')!;
  set cadastro(DateTime value) => setField<DateTime>('cadastro', value);

  int? get fkColaborador => getField<int>('fk_colaborador');
  set fkColaborador(int? value) => setField<int>('fk_colaborador', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);
}
