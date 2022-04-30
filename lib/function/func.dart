import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class Func {
  static EdgeInsets paddingSize() {
    return EdgeInsets.all(8);
  }

  static void _share() =>
      Share.share('みんなもシェアスペースを利用しよう!', subject: 'おすすめのシェアスペース!');

  static Widget myShare() {
    return IconButton(
      icon: const Icon(Icons.share),
      onPressed: () => _share(),
    );
  }

  static PreferredSizeWidget? myAppBar(String text) {
    return AppBar(
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      //共有(share)のボタン
      actions: [
        myShare(),
      ],
    );
  }

  static Future movePage(BuildContext context, var pages) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => pages,
      ),
    );
  }

  static Widget myBottomNavigationBar(
      BuildContext context, int _selectedIndex) {
    int _initIndex = _selectedIndex;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: '欲しいものリスト',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box),
          label: '出品',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_active),
          label: 'お知らせ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'マイページ',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: (index) {
        _selectedIndex = index;
        if (_selectedIndex == 0 && _initIndex != 0) {
          //movePage(context, Home());
        }
        if (_selectedIndex == 1 && _initIndex != 1) {
          //movePage(context, InformFromOperation());
        }
        if (_selectedIndex == 2 && _initIndex != 2) {
          //movePage(context, SearchBookCollection());
        }
        if (_selectedIndex == 3 && _initIndex != 3) {
          //movePage(context, Announcement());
        }
        if (_selectedIndex == 4 && _initIndex != 4) {
          //movePage(context, MyPage());
        }
      },
    );
  }
}
