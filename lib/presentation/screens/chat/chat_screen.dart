import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_messages_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_messages_buble.dart';
import 'package:yes_no_app/presentation/widgets/shared/messages_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1417325384643-aac51acc9e5d?q=75&fm=jpg&w=1080&fit=max'),
          ),
        ),
        title: const Text('Mi Crush'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
              },
            )),
            const MessagesFieldBox()
          ],
        ),
      ),
    );
  }
}
