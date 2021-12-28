// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatController on _ChatControllerBase, Store {
  Computed<MainAxisAlignment>? _$isMeComputed;

  @override
  MainAxisAlignment get isMe =>
      (_$isMeComputed ??= Computed<MainAxisAlignment>(() => super.isMe,
              name: '_ChatControllerBase.isMe'))
          .value;

  final _$messageAtom = Atom(name: '_ChatControllerBase.message');

  @override
  String? get message {
    _$messageAtom.reportRead();
    return super.message;
  }

  @override
  set message(String? value) {
    _$messageAtom.reportWrite(value, super.message, () {
      super.message = value;
    });
  }

  final _$idUserAtom = Atom(name: '_ChatControllerBase.idUser');

  @override
  int get idUser {
    _$idUserAtom.reportRead();
    return super.idUser;
  }

  @override
  set idUser(int value) {
    _$idUserAtom.reportWrite(value, super.idUser, () {
      super.idUser = value;
    });
  }

  final _$indexTesteAtom = Atom(name: '_ChatControllerBase.indexTeste');

  @override
  int get indexTeste {
    _$indexTesteAtom.reportRead();
    return super.indexTeste;
  }

  @override
  set indexTeste(int value) {
    _$indexTesteAtom.reportWrite(value, super.indexTeste, () {
      super.indexTeste = value;
    });
  }

  final _$_ChatControllerBaseActionController =
      ActionController(name: '_ChatControllerBase');

  @override
  void setMessage(String? value) {
    final _$actionInfo = _$_ChatControllerBaseActionController.startAction(
        name: '_ChatControllerBase.setMessage');
    try {
      return super.setMessage(value);
    } finally {
      _$_ChatControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIdUser(int value) {
    final _$actionInfo = _$_ChatControllerBaseActionController.startAction(
        name: '_ChatControllerBase.setIdUser');
    try {
      return super.setIdUser(value);
    } finally {
      _$_ChatControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void sendMessage() {
    final _$actionInfo = _$_ChatControllerBaseActionController.startAction(
        name: '_ChatControllerBase.sendMessage');
    try {
      return super.sendMessage();
    } finally {
      _$_ChatControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
message: ${message},
idUser: ${idUser},
indexTeste: ${indexTeste},
isMe: ${isMe}
    ''';
  }
}
