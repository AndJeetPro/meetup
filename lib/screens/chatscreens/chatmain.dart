
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meetup/screens/chatscreens/chatmessage.dart';

class ChatActivity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChatActivityState();
  }

}


class ChatActivityState extends State<ChatActivity> with TickerProviderStateMixin{
  bool _isComposing = false;
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(5.0),
            alignment: Alignment.center,
            width: 150,
            height: 52,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text("Meet Up Point"),
          ),
        ),
        elevation: 4.0,
      ),
      body: Column(
        children: <Widget>[
          Flexible(
              child: ListView.builder(
            padding: EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_,int index) => _messages[index],
            itemCount: _messages.length,
          )
          ),
          Divider(height: 1.0,),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor
            ),
            child: _buildTextComposer(),
          )
        ],
      ),
    );
  }


  Widget _buildTextComposer() {
    return IconTheme(data: IconThemeData(color: Theme.of(context).accentColor),
        child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[

            Flexible(child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration: InputDecoration.collapsed(
                  hintText: "Send a message"),
            ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(icon: Icon(Icons.send), onPressed: () =>_handleSubmitted(_textController.text)),
            )
          ],
        ),
    ));
  }


  void _handleSubmitted(String value) {
    _textController.clear();

    ChatMessage chatMessage = new ChatMessage(value,
    AnimationController(vsync: this,
    duration: Duration(milliseconds: 100)));
    setState(() {
      _messages.insert(0, chatMessage);
    });

    chatMessage.animationController.forward();
  }

  @override
  void dispose() {
    for(ChatMessage message in _messages)
      message.animationController.dispose();
    super.dispose();
  }
}