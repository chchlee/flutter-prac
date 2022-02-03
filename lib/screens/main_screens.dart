import 'package:c_market_ui/screens/chatting/chatting_screen.dart';
import 'package:c_market_ui/screens/home/home_screens.dart';
import 'package:c_market_ui/screens/my_carrot/my_carrot_screen.dart';
import 'package:c_market_ui/screens/near_me/near_me_screen.dart';
import 'package:c_market_ui/screens/neighborhood_life/neighborhood_life.screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0; // 사용자가 하단 아이콘 버튼을 눌렀을 때 위젯의 index값을 저장하는 변수
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // scaffold는 기본적인 시각적 레이아웃 구조를 간편하게 해줌
      body: IndexedStack(
        // 하위항목 하나만 보여주는 스택 위젯
        index: _selectedIndex,
        children: [
          HomeScreen(),
          NeighborhoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(
              CupertinoIcons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: '동네생활',
            icon: Icon(
              CupertinoIcons.square_on_square,
            ),
          ),
          BottomNavigationBarItem(
            label: '내 근처',
            icon: Icon(CupertinoIcons.placemark),
          ),
          BottomNavigationBarItem(
            label: '채팅',
            icon: Icon(CupertinoIcons.chat_bubble_2),
          ),
          BottomNavigationBarItem(
            label: '나의 당근',
            icon: Icon(CupertinoIcons.person),
          ),
        ],
      ),
    );
  }
}
