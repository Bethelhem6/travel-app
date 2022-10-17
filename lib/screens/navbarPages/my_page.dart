// ignore_for_file: unnecessary_const, unused_element

import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  double top = 0;

  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              pinned: true,
              stretch: true,
              expandedHeight: 250,
              flexibleSpace: LayoutBuilder(builder: (ctx, cons) {
                top = cons.biggest.height;
                return FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.asset(
                    "assets/hik1.jpg",
                    fit: BoxFit.cover,
                  ),
                  title: AnimatedOpacity(
                    duration: const Duration(milliseconds: 300),
                    opacity: top <= 200 ? 1.0 : 0.0,
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 12,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text("Bethelhem")
                      ],
                    ),
                  ),
                );
              }),
            ),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView(
                primary: false,
                shrinkWrap: true,
                children: [
                  const _userTileHeightSpace(height: 15),
                  const _userTileText(text: 'User Settings'),
                  const _userTileHeightSpace(height: 10),
                  const _userTileHeightSpace(height: 10),
                  _userListTile(
                    lIcon: Icons.call,
                    color: Colors.green.shade700,
                    title: '0918732261',
                    onTap: () {},
                  ),
                  _userListTile(
                    lIcon: Icons.email,
                    color: Colors.yellow.shade700,
                    title: 'bettymisg6@gmail.com',
                    onTap: () {},
                  ),
                  _userListTile(
                    lIcon: Icons.watch_later,
                    color: Colors.redAccent.shade100,
                    title: ' 17-10-2022',
                  ),
                  const _userListTile(
                    lIcon: Icons.edit,
                    color: Colors.purple,
                    title: 'Edit Profile',
                  ),
                  const _userTileText(text: 'general Settings'),
                  const _userTileHeightSpace(height: 10),
                  ListTile(
                    leading: const Icon(Icons.help_outline_rounded),
                    iconColor: Colors.green,
                    title: const Text('Get notification'),
                    trailing: Switch(value: true, onChanged: (val) {}),
                  ),
                  const _userListTile(
                    lIcon: Icons.person,
                    color: Colors.purple,
                    title: 'Contact Us',
                  ),
                  const _userListTile(
                    lIcon: Icons.language,
                    color: Colors.purple,
                    title: 'Language',
                  ),
                ],
              ),
            )),
          ],
        ),
      ]),
    );
  }
}

// ignore: camel_case_types
class _userListTile extends StatelessWidget {
  final IconData lIcon;
  final Color color;
  final String title;
  final IconData? tIcon;
  final VoidCallback? tIconCallBack;
  final VoidCallback? onTap;
  const _userListTile({
    this.tIcon,
    this.tIconCallBack,
    this.onTap,
    Key? key,
    required this.lIcon,
    required this.color,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          lIcon,
          color: color,
        ),
        title: Text(title),
        onTap: onTap,
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 15,
          color: Colors.grey[600],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _userTileHeightSpace extends StatelessWidget {
  final double height;
  const _userTileHeightSpace({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

// ignore: camel_case_types
class _userTileText extends StatelessWidget {
  final String text;
  const _userTileText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      ' $text',
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        // decoration: TextDecoration.underline,
      ),
    );
  }
}
