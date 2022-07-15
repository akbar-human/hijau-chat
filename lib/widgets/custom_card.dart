import 'package:flutter/material.dart';
import 'package:whatsap_clone/custom/globa_method.dart';
import 'package:whatsap_clone/custom/global_theme.dart';
import 'package:whatsap_clone/model/chat_model.dart';
import 'package:whatsap_clone/screens/chat_screen.dart';

class CustomCard extends StatelessWidget {
  // final String imageSource;
  // final String title;
  // final String message;
  // final String time;
  // final bool isRead;

  ///This is for model data in child message's list
  final ChatModel chatModel;

  ///Widget to showing ui message
  const CustomCard(
    this.chatModel, {
    Key? key,
  }) : super(key: key);
  // const CustomCard({Key? key, required this.imageSource, required this.title, required this.message, required this.time, this.isRead = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        moveToAnotherPage(context, ChatScreen(chatModel));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: unReadMessage,
              child: chatModel.isGroup
                  ? const Icon(
                      Icons.group,
                      color: white,
                    )
                  : const Icon(
                      Icons.person,
                      color: white,
                    ),
            ),
            title: Text(
              chatModel.name,
              style:
                  blackTextStyle(fontWeight: semiBold).copyWith(fontSize: 16),
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.done_all,
                  // color: chatModel. ? readMessage : unReadMessage,
                ),
                const SizedBox(width: 5),
                SizedBox(
                  // width: 200,
                  child: Text(
                    chatModel.currentMessage.length <= 25
                        ? chatModel.currentMessage
                        : chatModel.currentMessage.substring(0, 25) + '...',
                    overflow: TextOverflow.ellipsis,
                    style: blackTextStyle(fontWeight: light),
                  ),
                ),
              ],
            ),
            trailing: Text(
              chatModel.time,
              style: blackTextStyle(fontWeight: light).copyWith(
                fontSize: 16,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 80, right: 20),
            child: Divider(thickness: 1),
          ),
        ],
      ),
    );
  }
}
