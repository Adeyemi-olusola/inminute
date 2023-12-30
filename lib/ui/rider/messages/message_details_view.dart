import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Icon(
            Icons.phone_callback_outlined,
            color: Colors.grey,
          ),
          SizedBox(
            width: 20,
          )
        ],
        title: Text(
          'Daniel Austin',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                reverse: true,
                padding: const EdgeInsets.all(8.0),
                itemCount: _messages.length,
                itemBuilder: (_, int index) => _messages[index],
              ),
            ),
            const Divider(height: 1.0),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
              ),
              child: _buildTextComposer(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).cardColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                style: Theme.of(context).textTheme.bodySmall,
                autofocus: true,
                decoration: InputDecoration.collapsed(
                    hintText: 'Send a message',

                    hintStyle: Theme.of(context).textTheme.bodySmall!),
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: IconButton(
                icon: const Icon(
                  Icons.send,
                  color: Colors.black,
                ),
                onPressed: () => _handleSubmitted(_textController.text),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      text,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
