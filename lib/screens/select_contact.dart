import 'package:flutter/material.dart';
import 'package:whatsap_clone/custom/global_theme.dart';

class SelectContact extends StatefulWidget {
  /// Halaman tampilan saat memilih kontak
  const SelectContact({Key? key}) : super(key: key);

  @override
  State<SelectContact> createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppbar(),
    );
  }

  ///My appBar
  AppBar _myAppbar() {
    return AppBar(
      // title,
      leading: InkWell(
        onTap: () {},
        customBorder: const CircleBorder(),
        child: const Icon(Icons.arrow_back),
      ),
      title: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Contact',
                style: whiteTextStyle(fontWeight: bold).copyWith(
                  fontSize: 19,
                ),
              ),
              Text(
                '240 contacts',
                style: whiteTextStyle().copyWith(
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 26,
          ),
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
}
