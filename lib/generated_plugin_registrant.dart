//
// Generated file. Do not edit.
//

// ignore: unused_import
import 'dart:ui';

import 'package:cloud_firestore_web/cloud_firestore_web.dart';
import 'package:firebase_auth_web/firebase_auth_web.dart';
import 'package:firebase_core_web/firebase_core_web.dart';
import 'package:google_sign_in_web/google_sign_in_web.dart';
import 'package:shared_preferences_web/shared_preferences_web.dart';
import 'package:url_launcher_web/url_launcher_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ignore: public_member_api_docs
void registerPlugins(PluginRegistry registry) {
  FirestoreWeb.registerWith(registry.registrarFor(FirestoreWeb));
  FirebaseAuthWeb.registerWith(registry.registrarFor(FirebaseAuthWeb));
  FirebaseCoreWeb.registerWith(registry.registrarFor(FirebaseCoreWeb));
  GoogleSignInPlugin.registerWith(registry.registrarFor(GoogleSignInPlugin));
  SharedPreferencesPlugin.registerWith(registry.registrarFor(SharedPreferencesPlugin));
  UrlLauncherPlugin.registerWith(registry.registrarFor(UrlLauncherPlugin));
  registry.registerMessageHandler();
}
