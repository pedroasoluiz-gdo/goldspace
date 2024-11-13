import '../database.dart';

class CColaboradoresEnderecosTable
    extends SupabaseTable<CColaboradoresEnderecosRow> {
  @override
  String get tableName => 'c_colaboradores_enderecos';

  @override
  CColaboradoresEnderecosRow createRow(Map<String, dynamic> data) =>
      CColaboradoresEnderecosRow(data);
}

class CColaboradoresEnderecosRow extends SupabaseDataRow {
  CColaboradoresEnderecosRow(super.data);

  @override
  SupabaseTable get table => CColaboradoresEnderecosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get cadastro => getField<DateTime>('cadastro')!;
  set cadastro(DateTime value) => setField<DateTime>('cadastro', value);

  int? get fkColaborador => getField<int>('fk_colaborador');
  set fkColaborador(int? value) => setField<int>('fk_colaborador', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get logradouro => getField<String>('logradouro');
  set logradouro(String? value) => setField<String>('logradouro', value);

  int? get numero => getField<int>('numero');
  set numero(int? value) => setField<int>('numero', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get complemento => getField<String>('complemento');
  set complemento(String? value) => setField<String>('complemento', value);

  List<String> get comprovante => getListField<String>('comprovante');
  set comprovante(List<String>? value) =>
      setListField<String>('comprovante', value);
}
