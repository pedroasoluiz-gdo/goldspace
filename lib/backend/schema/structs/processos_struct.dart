// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProcessosStruct extends BaseStruct {
  ProcessosStruct({
    int? id,
    String? cpf,
    String? nome,
    String? responsavel,
    String? motivo,
    String? tipo,
    String? substituido,
    String? tipoRS,
    String? empresa,
    String? setor,
    String? gestor,
    String? cargo,
    String? cidade,
    String? tipoContrato,
    String? status,
    String? observacoes,
    String? equipamentos,
    String? notebook,
    String? celular,
    List<String>? equipamento,
    List<String>? canalDescricao,
    DateTime? abertura,
    DateTime? divulgacao,
    DateTime? requisitante,
    DateTime? proposta,
    DateTime? reabertura,
    DateTime? fechamento,
    DateTime? admissao,
    DateTime? cadastro,
    DateTime? novaDivulgacao,
  })  : _id = id,
        _cpf = cpf,
        _nome = nome,
        _responsavel = responsavel,
        _motivo = motivo,
        _tipo = tipo,
        _substituido = substituido,
        _tipoRS = tipoRS,
        _empresa = empresa,
        _setor = setor,
        _gestor = gestor,
        _cargo = cargo,
        _cidade = cidade,
        _tipoContrato = tipoContrato,
        _status = status,
        _observacoes = observacoes,
        _equipamentos = equipamentos,
        _notebook = notebook,
        _celular = celular,
        _equipamento = equipamento,
        _canalDescricao = canalDescricao,
        _abertura = abertura,
        _divulgacao = divulgacao,
        _requisitante = requisitante,
        _proposta = proposta,
        _reabertura = reabertura,
        _fechamento = fechamento,
        _admissao = admissao,
        _cadastro = cadastro,
        _novaDivulgacao = novaDivulgacao;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  set cpf(String? val) => _cpf = val;

  bool hasCpf() => _cpf != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "responsavel" field.
  String? _responsavel;
  String get responsavel => _responsavel ?? '';
  set responsavel(String? val) => _responsavel = val;

  bool hasResponsavel() => _responsavel != null;

  // "motivo" field.
  String? _motivo;
  String get motivo => _motivo ?? '';
  set motivo(String? val) => _motivo = val;

  bool hasMotivo() => _motivo != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  // "substituido" field.
  String? _substituido;
  String get substituido => _substituido ?? '';
  set substituido(String? val) => _substituido = val;

  bool hasSubstituido() => _substituido != null;

  // "tipoRS" field.
  String? _tipoRS;
  String get tipoRS => _tipoRS ?? '';
  set tipoRS(String? val) => _tipoRS = val;

  bool hasTipoRS() => _tipoRS != null;

  // "empresa" field.
  String? _empresa;
  String get empresa => _empresa ?? '';
  set empresa(String? val) => _empresa = val;

  bool hasEmpresa() => _empresa != null;

  // "setor" field.
  String? _setor;
  String get setor => _setor ?? '';
  set setor(String? val) => _setor = val;

  bool hasSetor() => _setor != null;

  // "gestor" field.
  String? _gestor;
  String get gestor => _gestor ?? '';
  set gestor(String? val) => _gestor = val;

  bool hasGestor() => _gestor != null;

  // "cargo" field.
  String? _cargo;
  String get cargo => _cargo ?? '';
  set cargo(String? val) => _cargo = val;

  bool hasCargo() => _cargo != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  set cidade(String? val) => _cidade = val;

  bool hasCidade() => _cidade != null;

  // "tipo_contrato" field.
  String? _tipoContrato;
  String get tipoContrato => _tipoContrato ?? '';
  set tipoContrato(String? val) => _tipoContrato = val;

  bool hasTipoContrato() => _tipoContrato != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "observacoes" field.
  String? _observacoes;
  String get observacoes => _observacoes ?? '';
  set observacoes(String? val) => _observacoes = val;

  bool hasObservacoes() => _observacoes != null;

  // "equipamentos" field.
  String? _equipamentos;
  String get equipamentos => _equipamentos ?? '';
  set equipamentos(String? val) => _equipamentos = val;

  bool hasEquipamentos() => _equipamentos != null;

  // "notebook" field.
  String? _notebook;
  String get notebook => _notebook ?? '';
  set notebook(String? val) => _notebook = val;

  bool hasNotebook() => _notebook != null;

  // "celular" field.
  String? _celular;
  String get celular => _celular ?? '';
  set celular(String? val) => _celular = val;

  bool hasCelular() => _celular != null;

  // "equipamento" field.
  List<String>? _equipamento;
  List<String> get equipamento => _equipamento ?? const [];
  set equipamento(List<String>? val) => _equipamento = val;

  void updateEquipamento(Function(List<String>) updateFn) {
    updateFn(_equipamento ??= []);
  }

  bool hasEquipamento() => _equipamento != null;

  // "canal_descricao" field.
  List<String>? _canalDescricao;
  List<String> get canalDescricao => _canalDescricao ?? const [];
  set canalDescricao(List<String>? val) => _canalDescricao = val;

  void updateCanalDescricao(Function(List<String>) updateFn) {
    updateFn(_canalDescricao ??= []);
  }

  bool hasCanalDescricao() => _canalDescricao != null;

  // "abertura" field.
  DateTime? _abertura;
  DateTime? get abertura => _abertura;
  set abertura(DateTime? val) => _abertura = val;

  bool hasAbertura() => _abertura != null;

  // "divulgacao" field.
  DateTime? _divulgacao;
  DateTime? get divulgacao => _divulgacao;
  set divulgacao(DateTime? val) => _divulgacao = val;

  bool hasDivulgacao() => _divulgacao != null;

  // "requisitante" field.
  DateTime? _requisitante;
  DateTime? get requisitante => _requisitante;
  set requisitante(DateTime? val) => _requisitante = val;

  bool hasRequisitante() => _requisitante != null;

  // "proposta" field.
  DateTime? _proposta;
  DateTime? get proposta => _proposta;
  set proposta(DateTime? val) => _proposta = val;

  bool hasProposta() => _proposta != null;

  // "reabertura" field.
  DateTime? _reabertura;
  DateTime? get reabertura => _reabertura;
  set reabertura(DateTime? val) => _reabertura = val;

  bool hasReabertura() => _reabertura != null;

  // "fechamento" field.
  DateTime? _fechamento;
  DateTime? get fechamento => _fechamento;
  set fechamento(DateTime? val) => _fechamento = val;

  bool hasFechamento() => _fechamento != null;

  // "admissao" field.
  DateTime? _admissao;
  DateTime? get admissao => _admissao;
  set admissao(DateTime? val) => _admissao = val;

  bool hasAdmissao() => _admissao != null;

  // "cadastro" field.
  DateTime? _cadastro;
  DateTime? get cadastro => _cadastro;
  set cadastro(DateTime? val) => _cadastro = val;

  bool hasCadastro() => _cadastro != null;

  // "novaDivulgacao" field.
  DateTime? _novaDivulgacao;
  DateTime? get novaDivulgacao => _novaDivulgacao;
  set novaDivulgacao(DateTime? val) => _novaDivulgacao = val;

  bool hasNovaDivulgacao() => _novaDivulgacao != null;

  static ProcessosStruct fromMap(Map<String, dynamic> data) => ProcessosStruct(
        id: castToType<int>(data['id']),
        cpf: data['cpf'] as String?,
        nome: data['nome'] as String?,
        responsavel: data['responsavel'] as String?,
        motivo: data['motivo'] as String?,
        tipo: data['tipo'] as String?,
        substituido: data['substituido'] as String?,
        tipoRS: data['tipoRS'] as String?,
        empresa: data['empresa'] as String?,
        setor: data['setor'] as String?,
        gestor: data['gestor'] as String?,
        cargo: data['cargo'] as String?,
        cidade: data['cidade'] as String?,
        tipoContrato: data['tipo_contrato'] as String?,
        status: data['status'] as String?,
        observacoes: data['observacoes'] as String?,
        equipamentos: data['equipamentos'] as String?,
        notebook: data['notebook'] as String?,
        celular: data['celular'] as String?,
        equipamento: getDataList(data['equipamento']),
        canalDescricao: getDataList(data['canal_descricao']),
        abertura: data['abertura'] as DateTime?,
        divulgacao: data['divulgacao'] as DateTime?,
        requisitante: data['requisitante'] as DateTime?,
        proposta: data['proposta'] as DateTime?,
        reabertura: data['reabertura'] as DateTime?,
        fechamento: data['fechamento'] as DateTime?,
        admissao: data['admissao'] as DateTime?,
        cadastro: data['cadastro'] as DateTime?,
        novaDivulgacao: data['novaDivulgacao'] as DateTime?,
      );

  static ProcessosStruct? maybeFromMap(dynamic data) => data is Map
      ? ProcessosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'cpf': _cpf,
        'nome': _nome,
        'responsavel': _responsavel,
        'motivo': _motivo,
        'tipo': _tipo,
        'substituido': _substituido,
        'tipoRS': _tipoRS,
        'empresa': _empresa,
        'setor': _setor,
        'gestor': _gestor,
        'cargo': _cargo,
        'cidade': _cidade,
        'tipo_contrato': _tipoContrato,
        'status': _status,
        'observacoes': _observacoes,
        'equipamentos': _equipamentos,
        'notebook': _notebook,
        'celular': _celular,
        'equipamento': _equipamento,
        'canal_descricao': _canalDescricao,
        'abertura': _abertura,
        'divulgacao': _divulgacao,
        'requisitante': _requisitante,
        'proposta': _proposta,
        'reabertura': _reabertura,
        'fechamento': _fechamento,
        'admissao': _admissao,
        'cadastro': _cadastro,
        'novaDivulgacao': _novaDivulgacao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'cpf': serializeParam(
          _cpf,
          ParamType.String,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'responsavel': serializeParam(
          _responsavel,
          ParamType.String,
        ),
        'motivo': serializeParam(
          _motivo,
          ParamType.String,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'substituido': serializeParam(
          _substituido,
          ParamType.String,
        ),
        'tipoRS': serializeParam(
          _tipoRS,
          ParamType.String,
        ),
        'empresa': serializeParam(
          _empresa,
          ParamType.String,
        ),
        'setor': serializeParam(
          _setor,
          ParamType.String,
        ),
        'gestor': serializeParam(
          _gestor,
          ParamType.String,
        ),
        'cargo': serializeParam(
          _cargo,
          ParamType.String,
        ),
        'cidade': serializeParam(
          _cidade,
          ParamType.String,
        ),
        'tipo_contrato': serializeParam(
          _tipoContrato,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'observacoes': serializeParam(
          _observacoes,
          ParamType.String,
        ),
        'equipamentos': serializeParam(
          _equipamentos,
          ParamType.String,
        ),
        'notebook': serializeParam(
          _notebook,
          ParamType.String,
        ),
        'celular': serializeParam(
          _celular,
          ParamType.String,
        ),
        'equipamento': serializeParam(
          _equipamento,
          ParamType.String,
          isList: true,
        ),
        'canal_descricao': serializeParam(
          _canalDescricao,
          ParamType.String,
          isList: true,
        ),
        'abertura': serializeParam(
          _abertura,
          ParamType.DateTime,
        ),
        'divulgacao': serializeParam(
          _divulgacao,
          ParamType.DateTime,
        ),
        'requisitante': serializeParam(
          _requisitante,
          ParamType.DateTime,
        ),
        'proposta': serializeParam(
          _proposta,
          ParamType.DateTime,
        ),
        'reabertura': serializeParam(
          _reabertura,
          ParamType.DateTime,
        ),
        'fechamento': serializeParam(
          _fechamento,
          ParamType.DateTime,
        ),
        'admissao': serializeParam(
          _admissao,
          ParamType.DateTime,
        ),
        'cadastro': serializeParam(
          _cadastro,
          ParamType.DateTime,
        ),
        'novaDivulgacao': serializeParam(
          _novaDivulgacao,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static ProcessosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProcessosStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        cpf: deserializeParam(
          data['cpf'],
          ParamType.String,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        responsavel: deserializeParam(
          data['responsavel'],
          ParamType.String,
          false,
        ),
        motivo: deserializeParam(
          data['motivo'],
          ParamType.String,
          false,
        ),
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        substituido: deserializeParam(
          data['substituido'],
          ParamType.String,
          false,
        ),
        tipoRS: deserializeParam(
          data['tipoRS'],
          ParamType.String,
          false,
        ),
        empresa: deserializeParam(
          data['empresa'],
          ParamType.String,
          false,
        ),
        setor: deserializeParam(
          data['setor'],
          ParamType.String,
          false,
        ),
        gestor: deserializeParam(
          data['gestor'],
          ParamType.String,
          false,
        ),
        cargo: deserializeParam(
          data['cargo'],
          ParamType.String,
          false,
        ),
        cidade: deserializeParam(
          data['cidade'],
          ParamType.String,
          false,
        ),
        tipoContrato: deserializeParam(
          data['tipo_contrato'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        observacoes: deserializeParam(
          data['observacoes'],
          ParamType.String,
          false,
        ),
        equipamentos: deserializeParam(
          data['equipamentos'],
          ParamType.String,
          false,
        ),
        notebook: deserializeParam(
          data['notebook'],
          ParamType.String,
          false,
        ),
        celular: deserializeParam(
          data['celular'],
          ParamType.String,
          false,
        ),
        equipamento: deserializeParam<String>(
          data['equipamento'],
          ParamType.String,
          true,
        ),
        canalDescricao: deserializeParam<String>(
          data['canal_descricao'],
          ParamType.String,
          true,
        ),
        abertura: deserializeParam(
          data['abertura'],
          ParamType.DateTime,
          false,
        ),
        divulgacao: deserializeParam(
          data['divulgacao'],
          ParamType.DateTime,
          false,
        ),
        requisitante: deserializeParam(
          data['requisitante'],
          ParamType.DateTime,
          false,
        ),
        proposta: deserializeParam(
          data['proposta'],
          ParamType.DateTime,
          false,
        ),
        reabertura: deserializeParam(
          data['reabertura'],
          ParamType.DateTime,
          false,
        ),
        fechamento: deserializeParam(
          data['fechamento'],
          ParamType.DateTime,
          false,
        ),
        admissao: deserializeParam(
          data['admissao'],
          ParamType.DateTime,
          false,
        ),
        cadastro: deserializeParam(
          data['cadastro'],
          ParamType.DateTime,
          false,
        ),
        novaDivulgacao: deserializeParam(
          data['novaDivulgacao'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'ProcessosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProcessosStruct &&
        id == other.id &&
        cpf == other.cpf &&
        nome == other.nome &&
        responsavel == other.responsavel &&
        motivo == other.motivo &&
        tipo == other.tipo &&
        substituido == other.substituido &&
        tipoRS == other.tipoRS &&
        empresa == other.empresa &&
        setor == other.setor &&
        gestor == other.gestor &&
        cargo == other.cargo &&
        cidade == other.cidade &&
        tipoContrato == other.tipoContrato &&
        status == other.status &&
        observacoes == other.observacoes &&
        equipamentos == other.equipamentos &&
        notebook == other.notebook &&
        celular == other.celular &&
        listEquality.equals(equipamento, other.equipamento) &&
        listEquality.equals(canalDescricao, other.canalDescricao) &&
        abertura == other.abertura &&
        divulgacao == other.divulgacao &&
        requisitante == other.requisitante &&
        proposta == other.proposta &&
        reabertura == other.reabertura &&
        fechamento == other.fechamento &&
        admissao == other.admissao &&
        cadastro == other.cadastro &&
        novaDivulgacao == other.novaDivulgacao;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        cpf,
        nome,
        responsavel,
        motivo,
        tipo,
        substituido,
        tipoRS,
        empresa,
        setor,
        gestor,
        cargo,
        cidade,
        tipoContrato,
        status,
        observacoes,
        equipamentos,
        notebook,
        celular,
        equipamento,
        canalDescricao,
        abertura,
        divulgacao,
        requisitante,
        proposta,
        reabertura,
        fechamento,
        admissao,
        cadastro,
        novaDivulgacao
      ]);
}

ProcessosStruct createProcessosStruct({
  int? id,
  String? cpf,
  String? nome,
  String? responsavel,
  String? motivo,
  String? tipo,
  String? substituido,
  String? tipoRS,
  String? empresa,
  String? setor,
  String? gestor,
  String? cargo,
  String? cidade,
  String? tipoContrato,
  String? status,
  String? observacoes,
  String? equipamentos,
  String? notebook,
  String? celular,
  DateTime? abertura,
  DateTime? divulgacao,
  DateTime? requisitante,
  DateTime? proposta,
  DateTime? reabertura,
  DateTime? fechamento,
  DateTime? admissao,
  DateTime? cadastro,
  DateTime? novaDivulgacao,
}) =>
    ProcessosStruct(
      id: id,
      cpf: cpf,
      nome: nome,
      responsavel: responsavel,
      motivo: motivo,
      tipo: tipo,
      substituido: substituido,
      tipoRS: tipoRS,
      empresa: empresa,
      setor: setor,
      gestor: gestor,
      cargo: cargo,
      cidade: cidade,
      tipoContrato: tipoContrato,
      status: status,
      observacoes: observacoes,
      equipamentos: equipamentos,
      notebook: notebook,
      celular: celular,
      abertura: abertura,
      divulgacao: divulgacao,
      requisitante: requisitante,
      proposta: proposta,
      reabertura: reabertura,
      fechamento: fechamento,
      admissao: admissao,
      cadastro: cadastro,
      novaDivulgacao: novaDivulgacao,
    );
