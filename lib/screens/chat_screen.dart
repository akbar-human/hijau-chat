import 'dart:io';

import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:whatsap_clone/custom/global_theme.dart';
import 'package:whatsap_clone/model/chat_model.dart';

class ChatScreen extends StatefulWidget {
  ///Model data for chatscren
  final ChatModel chatModel;

  ///all chat screen widget are in this widget
  const ChatScreen(this.chatModel, {Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool _isShowEmoji = false;
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) _isShowEmoji = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellow,
      appBar: _myCustomAppBar(),
      body: _bodyScreen(),
    );
  }

  ///Appbar widget in this page
  AppBar _myCustomAppBar() {
    return AppBar(
      backgroundColor: primaryColor,
      leading: InkWell(
        customBorder: const CircleBorder(),
        onTap: () {},
        child: const Icon(
          Icons.arrow_back,
          size: 24,
          color: white,
        ),
      ),
      title: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blueGrey,
            radius: 25,
            child: Icon(
              widget.chatModel.isGroup ? Icons.group : Icons.person,
              color: white,
              size: 40,
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.chatModel.name,
                  // textAlign: TextAlign.left,
                  style:
                      whiteTextStyle(fontWeight: bold).copyWith(fontSize: 18.5),
                ),
                // SizedBox(width: 10),
                SizedBox(
                  width: 100,
                  child: Text(
                    'Last seen today at 12:00',
                    overflow: TextOverflow.ellipsis,
                    style: whiteTextStyle(fontWeight: light)
                        .copyWith(fontSize: 12, color: white70),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.videocam),
          color: white,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.call),
          color: white,
        ),
        PopupMenuButton<String>(
          onSelected: (value) {},
          icon: const Icon(
            Icons.more_vert,
            color: white,
          ),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                textStyle: blackTextStyle(fontWeight: light),
                value: 'Lihat Kontak',
                child: const Text(
                  'Lihat Kontak',
                ),
              ),
              PopupMenuItem(
                textStyle: blackTextStyle(fontWeight: light),
                value: 'Media, links, dan dok...',
                child: const Text(
                  'Media, links, dan dokumen',
                ),
              ),
              PopupMenuItem(
                textStyle: blackTextStyle(fontWeight: light),
                value: 'Senyapkan Pemberitahuan',
                child: const Text(
                  'Senyapkan Pemberitahuan',
                ),
              ),
              PopupMenuItem(
                textStyle: blackTextStyle(fontWeight: light),
                value: 'Wallpaper',
                child: const Text(
                  'Wallpaper',
                ),
              ),
            ];
          },
        ),
      ],
    );
  }

  ///All widget under app bar
  Widget _bodyScreen() {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          ListView(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 55,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        margin:
                            const EdgeInsets.only(left: 2, right: 2, bottom: 9),
                        child: TextFormField(
                          focusNode: _focusNode,
                          controller: _textController,
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.multiline,
                          maxLines: 5,
                          minLines: 1,
                          decoration: InputDecoration(
                            hintText: 'Ketikan pesan...',
                            hintStyle: blackTextStyle().copyWith(
                              color: black1.withOpacity(0.5),
                            ),
                            border: InputBorder.none,
                            prefixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _focusNode.unfocus();
                                  _focusNode.canRequestFocus = false;
                                  _isShowEmoji = !_isShowEmoji;
                                });
                              },
                              color: accentColor,
                              icon: const Icon(Icons.emoji_emotions),
                            ),
                            contentPadding: const EdgeInsets.all(5),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        backgroundColor: transparent,
                                        builder: (builder) => _bottomSheet());
                                  },
                                  icon: const Icon(Icons.attach_file),
                                  color: accentColor,
                                ),
                                IconButton(
                                  color: accentColor,
                                  onPressed: () {},
                                  icon: const Icon(Icons.camera_alt),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8, right: 2),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: accentColor,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.mic),
                        ),
                      ),
                    ),
                  ],
                ),
                // emojiSelect(),
                _isShowEmoji ? _emojiSelect() : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///Widget if attachment file is triger
  Widget _bottomSheet() {
    return SizedBox(
      height: 278,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.all(18),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _iconCreate(
                      icon: Icons.insert_drive_file,
                      color: Colors.indigo,
                      text: 'Documents'),
                  _iconCreate(
                      icon: Icons.camera_alt,
                      color: Colors.pink,
                      text: 'Camera'),
                  _iconCreate(
                      icon: Icons.insert_photo,
                      color: Colors.purple,
                      text: 'Gallery'),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _iconCreate(
                      icon: Icons.headset, color: Colors.orange, text: 'Audio'),
                  _iconCreate(
                      icon: Icons.location_pin,
                      color: Colors.teal,
                      text: 'Location'),
                  _iconCreate(
                      icon: Icons.person, color: Colors.blue, text: 'Contact'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///WIdget is Show emoji is triger
  Widget _emojiSelect() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      child: EmojiPicker(
        config: Config(
          emojiSizeMax: 32 * (Platform.isIOS ? 1.30 : 1.0),
        ),
        onEmojiSelected: (category, emoji) {
          setState(() {
            _textController.text = _textController.text + emoji.emoji;
          });
        },
      ),
    );
  }

  ///child icon attach
  Widget _iconCreate({IconData? icon, Color? color, String? text}) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Icon(
            icon,
            size: 29,
            color: white,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          text!,
          style: blackTextStyle(fontWeight: light).copyWith(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
