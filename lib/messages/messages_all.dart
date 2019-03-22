// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that looks up messages for specific locales by
// delegating to the appropriate library.

import 'dart:async';

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
// ignore: implementation_imports
import 'package:intl/src/intl_helpers.dart';

import 'messages_de_DE.dart' deferred as messages_de_DE;
import 'messages_en_US.dart' deferred as messages_en_US;
import 'messages_en_GB.dart' deferred as messages_en_GB;
import 'messages_es_ES.dart' deferred as messages_es_ES;
import 'messages_pl_PL.dart' deferred as messages_pl_PL;

typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
  'de_DE': () => messages_de_DE.loadLibrary(),
  'en_US': () => messages_en_US.loadLibrary(),
  'en_GB': () => messages_en_GB.loadLibrary(),
  'es_ES': () => messages_es_ES.loadLibrary(),
  'pl_PL': () => messages_pl_PL.loadLibrary(),
};

MessageLookupByLibrary _findExact(localeName) {
  switch (localeName) {
    case 'de_DE':
      return messages_de_DE.messages;
    case 'en_US':
      return messages_en_US.messages;
    case 'en_GB':
      return messages_en_GB.messages;
    case 'es_ES':
      return messages_es_ES.messages;
    case 'pl_PL':
      return messages_pl_PL.messages;
    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future<bool> initializeMessages(String localeName) async {
  var availableLocale = Intl.verifiedLocale(
    localeName,
    (locale) => _deferredLibraries[locale] != null,
    onFailure: (_) => null);
  if (availableLocale == null) {
    // ignore: unnecessary_new
    return new Future.value(false);
  }
  var lib = _deferredLibraries[availableLocale];
  // ignore: unnecessary_new
  await (lib == null ? new Future.value(false) : lib());
  // ignore: unnecessary_new
  initializeInternalMessageLookup(() => new CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);
  // ignore: unnecessary_new
  return new Future.value(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

MessageLookupByLibrary _findGeneratedMessagesFor(locale) {
  var actualLocale = Intl.verifiedLocale(locale, _messagesExistFor,
      onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}
