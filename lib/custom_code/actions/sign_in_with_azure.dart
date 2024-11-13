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

//import '/actions/actions.dart' as action_blocks;

import 'package:supabase_flutter/supabase_flutter.dart';

Future signInWithAzure() async {
  final supabase = SupaFlow.client;
  await supabase.auth.signInWithOAuth(
    Provider.azure, // Define o provedor como 'azure'
    //scopes: 'offline_access',
    redirectTo: isWeb
        ? 'https://goldtalent.flutterflow.app'
        : 'goldtalent://goldtalent.com',
    //: 'goldtalent://goldtalent.com', //isWeb ? null : 'rhapp://rhapp.com',
    //'https://mmzhpywuzkxppbwsalry.supabase.co/auth/v1/authorize?provider=azure', // URL de redirecionamento
  );
}
