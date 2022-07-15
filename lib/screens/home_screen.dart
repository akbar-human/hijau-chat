import 'package:flutter/material.dart';
import 'package:whatsap_clone/custom/global_theme.dart';
import 'package:whatsap_clone/pages/chats_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'Hijau Talk',
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          PopupMenuButton<String>(
            onSelected: (value) {
            },
            icon: const Icon(Icons.more_vert),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  textStyle: blackTextStyle(fontWeight: light),
                  value: 'Grup baru',
                  child:const Text(
                    'Grup baru',
                  ),
                ),
                PopupMenuItem(
                  textStyle: blackTextStyle(fontWeight: light),
                  value: 'Hijau Web',
                  child: const Text(
                    'Hijau Web',
                  ),
                ),
                PopupMenuItem(
                  textStyle: blackTextStyle(fontWeight: light),
                  value: 'Mulai Obrolan',
                  child: const Text(
                    'Mulai Obrolan',
                  ),
                ),
                PopupMenuItem(
                  textStyle: blackTextStyle(fontWeight: light),
                  value: 'Pengaturan',
                  child: const Text(
                    'Pengaturan',
                  ),
                ),
              ];
            },
          ),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: white,
          labelStyle: whiteTextStyle(),
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'OBROLAN',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'PANGGILAN',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          Text('Camera'),
          ChatPage(),
          Text('Status'),
          Text('Panggilan'),
        ],
      ),
    );
  }
}
