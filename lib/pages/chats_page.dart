import 'package:flutter/material.dart';
import 'package:whatsap_clone/custom/globa_method.dart';
import 'package:whatsap_clone/model/chat_model.dart';
import 'package:whatsap_clone/screens/select_contact.dart';
import 'package:whatsap_clone/widgets/custom_card.dart';

class ChatPage extends StatefulWidget {
  ///This is widget is for setting ChatPage widget
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  // late List<ChatModel> chats;
  final List<ChatModel> chats = [
    ChatModel(
        name: 'Anohana',
        icon: '',
        isGroup: false,
        time: '12:00',
        currentMessage: 'Hi Mate can you'),
    ChatModel(
        name: 'Lestari',
        icon: '',
        isGroup: false,
        time: '06:30',
        currentMessage: 'Bangun ay'),
    ChatModel(
        name: 'Server sociaol',
        icon: '',
        isGroup: true,
        time: '00:31',
        currentMessage: 'TOlong gk bisa tidur'),
    ChatModel(
        name: 'Lestari',
        icon: '',
        isGroup: false,
        time: '06:30',
        currentMessage:
            'Bangun ay  dauhauhuhudas udi uadiuaih uhiuh iuh audiuashdua'),
    ChatModel(
        name: 'Anohana',
        icon: '',
        isGroup: false,
        time: '12:00',
        currentMessage: 'Hi Mate can you'),
    ChatModel(
        name: 'Server sociaol',
        icon: '',
        isGroup: true,
        time: '00:31',
        currentMessage: 'TOlong gk bisa tidur'),
    ChatModel(
        name: 'Anohana',
        icon: '',
        isGroup: false,
        time: '12:00',
        currentMessage: 'Hi Mate can you'),
    ChatModel(
        name: 'Anohana',
        icon: '',
        isGroup: false,
        time: '12:00',
        currentMessage: 'Hi Mate can you'),
    ChatModel(
        name: 'Server sociaol',
        icon: '',
        isGroup: true,
        time: '00:31',
        currentMessage: 'TOlong gk bisa tidur'),
    ChatModel(
        name: 'Lestari',
        icon: '',
        isGroup: false,
        time: '06:30',
        currentMessage: 'Bangun ay'),
    ChatModel(
        name: 'Server sociaol',
        icon: '',
        isGroup: true,
        time: '00:31',
        currentMessage: 'TOlong gk bisa tidur'),
    ChatModel(
        name: 'Anohana',
        icon: '',
        isGroup: false,
        time: '12:00',
        currentMessage:
            'HiMatyouHiMatyouHiMatyouHiMatyouHiMatyouHiMatyouHiMatyouHiMatyouHiMatyou'),
    ChatModel(
        name: 'Lestari',
        icon: '',
        isGroup: false,
        time: '06:30',
        currentMessage: 'Bangun ay'),
    ChatModel(
        name: 'Server sociaol',
        icon: '',
        isGroup: true,
        time: '00:31',
        currentMessage: 'TOlong gk bisa tidur'),
    ChatModel(
        name: 'Lestari',
        icon: '',
        isGroup: false,
        time: '06:30',
        currentMessage: 'Bangun ay'),
  ];

  bool isLoading = false;

//   getDataServer() async {
//     setState(() {
//       isLoading = true;
//     });
//     await Future.delayed(Duration(milliseconds: 3000), () {
// // ChatModel.fromMap({'name':'Anoha','isGroup':false,'current'})
//       List<ChatModel> myTemporaryList = [
//         ChatModel(
//             name: 'Anohana',
//             icon: '',
//             isGroup: false,
//             time: '12:00',
//             currentMessage: 'Hi Mate can you'),
//         ChatModel(
//             name: 'Lestari',
//             icon: '',
//             isGroup: false,
//             time: '06:30',
//             currentMessage: 'Bangun ay'),
//         ChatModel(
//             name: 'Server sociaol',
//             icon: '',
//             isGroup: true,
//             time: '00:31',
//             currentMessage: 'TOlong gk bisa tidur'),
//         ChatModel(
//             name: 'Lestari',
//             icon: '',
//             isGroup: false,
//             time: '06:30',
//             currentMessage:
//                 'Bangun ay  dauhauhuhudas udi uadiuaih uhiuh iuh audiuashdua'),
//         ChatModel(
//             name: 'Anohana',
//             icon: '',
//             isGroup: false,
//             time: '12:00',
//             currentMessage: 'Hi Mate can you'),
//         ChatModel(
//             name: 'Server sociaol',
//             icon: '',
//             isGroup: true,
//             time: '00:31',
//             currentMessage: 'TOlong gk bisa tidur'),
//         ChatModel(
//             name: 'Anohana',
//             icon: '',
//             isGroup: false,
//             time: '12:00',
//             currentMessage: 'Hi Mate can you'),
//         ChatModel(
//             name: 'Anohana',
//             icon: '',
//             isGroup: false,
//             time: '12:00',
//             currentMessage: 'Hi Mate can you'),
//         ChatModel(
//             name: 'Server sociaol',
//             icon: '',
//             isGroup: true,
//             time: '00:31',
//             currentMessage: 'TOlong gk bisa tidur'),
//         ChatModel(
//             name: 'Lestari',
//             icon: '',
//             isGroup: false,
//             time: '06:30',
//             currentMessage: 'Bangun ay'),
//         ChatModel(
//             name: 'Server sociaol',
//             icon: '',
//             isGroup: true,
//             time: '00:31',
//             currentMessage: 'TOlong gk bisa tidur'),
//         ChatModel(
//             name: 'Anohana',
//             icon: '',
//             isGroup: false,
//             time: '12:00',
//             currentMessage:
//                 'HiMatyouHiMatyouHiMatyouHiMatyouHiMatyouHiMatyouHiMatyouHiMatyouHiMatyou'),
//         ChatModel(
//             name: 'Lestari',
//             icon: '',
//             isGroup: false,
//             time: '06:30',
//             currentMessage: 'Bangun ay'),
//         ChatModel(
//             name: 'Server sociaol',
//             icon: '',
//             isGroup: true,
//             time: '00:31',
//             currentMessage: 'TOlong gk bisa tidur'),
//         ChatModel(
//             name: 'Lestari',
//             icon: '',
//             isGroup: false,
//             time: '06:30',
//             currentMessage: 'Bangun ay'),
//       ];

//       setState(() {
//         chats = myTemporaryList;
//         isLoading = false;
//       });
//     });
//   }

  // @override
  // void initState() {
  //   super.initState();
  //   getDataServer();
  //   // print(chats[0].currentMessage);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            moveToAnotherPage(context, const SelectContact());
          },
          child: const Icon(
            Icons.chat,
          ),
        ),
        body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) => CustomCard(chats[index]),
        ));
  }
}
