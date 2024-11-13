import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gold_space_adm/geral/cabecalhos/menu_lateral/menu_lateral_widget.dart';
import '/gold_space_adm/geral/chat/usr_msg/usr_msg_widget.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  Local state fields for this component.

  String? fkConversa;

  String? nome;

  String? picture;

  bool info = false;

  List<ConversasStruct> conversas = [];
  void addToConversas(ConversasStruct item) => conversas.add(item);
  void removeFromConversas(ConversasStruct item) => conversas.remove(item);
  void removeAtIndexFromConversas(int index) => conversas.removeAt(index);
  void insertAtIndexInConversas(int index, ConversasStruct item) =>
      conversas.insert(index, item);
  void updateConversasAtIndex(int index, Function(ConversasStruct) updateFn) =>
      conversas[index] = updateFn(conversas[index]);

  FFUploadedFile? imagem;

  String? fkUsuario;

  List<UsuarioStruct> usuarios = [];
  void addToUsuarios(UsuarioStruct item) => usuarios.add(item);
  void removeFromUsuarios(UsuarioStruct item) => usuarios.remove(item);
  void removeAtIndexFromUsuarios(int index) => usuarios.removeAt(index);
  void insertAtIndexInUsuarios(int index, UsuarioStruct item) =>
      usuarios.insert(index, item);
  void updateUsuariosAtIndex(int index, Function(UsuarioStruct) updateFn) =>
      usuarios[index] = updateFn(usuarios[index]);

  List<MensagensStruct> mensagens = [];
  void addToMensagens(MensagensStruct item) => mensagens.add(item);
  void removeFromMensagens(MensagensStruct item) => mensagens.remove(item);
  void removeAtIndexFromMensagens(int index) => mensagens.removeAt(index);
  void insertAtIndexInMensagens(int index, MensagensStruct item) =>
      mensagens.insert(index, item);
  void updateMensagensAtIndex(int index, Function(MensagensStruct) updateFn) =>
      mensagens[index] = updateFn(mensagens[index]);

  bool vwNovochat = false;

  bool veOpcao = false;

  ///  State fields for stateful widgets in this component.

  // Model for Menu-lateral component.
  late MenuLateralModel menuLateralModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Models for usrMsg dynamic component.
  late FlutterFlowDynamicModels<UsrMsgModel> usrMsgModels;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for txtQuestion widget.
  FocusNode? txtQuestionFocusNode;
  TextEditingController? txtQuestionTextController;
  String? Function(BuildContext, String?)? txtQuestionTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in IconButton widget.
  BConversasRow? cvs;
  // Stores action output result for [Backend Call - Insert Row] action in IconButton widget.
  BMensagensRow? insert;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Stores action output result for [Backend Call - API (ReadMessages)] action in IconButton widget.
  ApiCallResponse? msgResult2;

  @override
  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
    usrMsgModels = FlutterFlowDynamicModels(() => UsrMsgModel());
  }

  @override
  void dispose() {
    menuLateralModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    usrMsgModels.dispose();
    txtQuestionFocusNode?.dispose();
    txtQuestionTextController?.dispose();
  }

  /// Action blocks.
  Future loadingChat(BuildContext context) async {
    ApiCallResponse? result;

    result = await ChatGroup.filteringConversasCall.call(
      nome: textController1.text,
      user: currentUserUid,
    );

    if ((result.succeeded ?? true)) {
      conversas = ((result.jsonBody ?? '')
              .toList()
              .map<ConversasStruct?>(ConversasStruct.maybeFromMap)
              .toList() as Iterable<ConversasStruct?>)
          .withoutNulls
          .toList()
          .cast<ConversasStruct>();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Algo deu errado, tente novamente ou entre em contato com suporte.',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: const Duration(milliseconds: 4000),
          backgroundColor: FlutterFlowTheme.of(context).error,
        ),
      );
    }
  }

  Future loadingUsers(BuildContext context) async {
    ApiCallResponse? resultado;

    resultado = await UsuariosGroup.filteringUsersCall.call(
      nome: textController2.text,
    );

    if ((resultado.succeeded ?? true)) {
      usuarios = ((resultado.jsonBody ?? '')
              .toList()
              .map<UsuarioStruct?>(UsuarioStruct.maybeFromMap)
              .toList() as Iterable<UsuarioStruct?>)
          .withoutNulls
          .toList()
          .cast<UsuarioStruct>();
    }
  }

  Future loadingMsg(BuildContext context) async {
    ApiCallResponse? msgResult;

    msgResult = await ChatGroup.readMessagesCall.call(
      fkConversa: fkConversa,
    );

    if ((msgResult.succeeded ?? true)) {
      mensagens = ((msgResult.jsonBody ?? '')
              .toList()
              .map<MensagensStruct?>(MensagensStruct.maybeFromMap)
              .toList() as Iterable<MensagensStruct?>)
          .withoutNulls
          .toList()
          .cast<MensagensStruct>();
    }
  }
}
