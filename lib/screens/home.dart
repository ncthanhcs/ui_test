import 'package:flutter/material.dart';
import 'package:ui_test/configs/color.dart';
import 'package:ui_test/configs/image.dart';
import 'package:ui_test/screens/not_found.dart';
import 'package:ui_test/screens/save.dart';
import 'package:ui_test/utils/color.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // list config item bottom navigation bar
  final List<Map<String, String>> listItemBar = [
    {'image': money, 'label': 'home'},
    {'image': save, 'label': 'save'},
    {'image': package, 'label': 'package'},
    {'image': history, 'label': 'history'},
    {'image': menu, 'label': 'menu'},
  ];
  // index bottom navigation bar
  int indexSelected = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: getAppBar(),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: UtilColor.getColorFromHex(primaryColor),
            type: BottomNavigationBarType.fixed,
            currentIndex: indexSelected,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedIconTheme:
                IconThemeData(color: UtilColor.getColorFromHex(lineColor)),
            items: listItemBar
                .map((e) => getItemBar(e['image'], e['label']))
                .toList(),
            onTap: (index) {
              setState(() {
                indexSelected = index;
              });
            },
          ),
          body: getBody()),
    );
  }

  Widget getBody() {
    switch (indexSelected) {
      case 1:
        return Save();
      default:
        return const NotFound();
    }
  }

  AppBar? getAppBar() {
    switch (indexSelected) {
      case 1:
        return AppBar(
          elevation: 0,
          title: getTitleAppBar(),
          centerTitle: false,
          actions: getActionAppBar(),
        );
      default:
        return null; // null mean: not Appbar
    }
  }

  Widget getTitleAppBar() {
    switch (indexSelected) {
      case 1:
        return Text('Xin chào CTDT12',
            style: Theme.of(context).textTheme.headline1);
      default:
        return const Text('');
    }
  }

  List<Widget> getActionAppBar() {
    switch (indexSelected) {
      case 1:
        return [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.wallet_giftcard),
              color: Colors.white),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_outlined),
              color: Colors.white)
        ];
      default:
        return []; // not actionAppbar
    }
  }

  BottomNavigationBarItem getItemBar(image, lable) {
    return BottomNavigationBarItem(
        icon: ImageIcon(AssetImage(image),
            size: MediaQuery.of(context).size.width / 10),
        label: lable,
        tooltip: '');
  }
}
