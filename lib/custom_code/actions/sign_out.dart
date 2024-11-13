// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//import '/backend/schema/structs/index.dart';
//import '/actions/actions.dart' as action_blocks;

import 'package:url_launcher/url_launcher.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

Future signOut() async {
  final supabase = SupaFlow.client;
  // Remove a autenticação do usuário no Supabase
  await supabase.auth.signOut(scope: SignOutScope.global);

  // Redireciona para o logout do Azure AD na mesma tela do navegador
  const azureLogoutUrl =
      'https://login.microsoftonline.com/b3e3486c-878f-4d87-bb2d-6c01820baa50/oauth2/v2.0/logout';

  // Abre a URL de logout do AD para finalizar a sessão, na mesma tela
  await launchUrl(
    Uri.parse(azureLogoutUrl),
    mode: LaunchMode.inAppWebView, // Garante que a ação ocorra na mesma tela
  );

  // Retorna para a guia de navegação anterior após o logout
  //Navigator.of(context).pop();
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
