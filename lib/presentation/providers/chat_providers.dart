import 'package:flutter/foundation.dart';
import 'package:yes_no_app/domain/entities/messages.dart';

class ChatProvider extends ChangeNotifier {
  List<Messages> messagesList = [
    Messages(text: 'Hola ;)', fromWho: FromWho.me),
    Messages(text: 'quieres pizza??', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    // TODO: IMPLEMENTAR METODO
  }
}
