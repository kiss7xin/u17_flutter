
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:u17_flutter/widgets/book_page.dart';
import 'package:u17_flutter/widgets/class_page.dart';
import 'package:u17_flutter/widgets/home_page.dart';
import 'package:u17_flutter/widgets/my_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 690),
      builder: () {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'U17_flutter',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.lightGreen,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: const RootPage(),
        );
      },
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {

  int _currentIndex = 0;
  late List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [
      const HomePage(),
      const ClassPage(),
      const BookShelfPage(),
      const MyPage()];
  }

  _ontap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    const imgPath = "assets/imgs/";
    const icons = <String>["tab_home","tab_class","tab_book","tab_mine"];

    var items = icons.map((value) => BottomNavigationBarItem(
        label: "",
        icon: Image.asset(imgPath + value + '@2x.png', width: 48,),
        activeIcon: Image.asset(imgPath + value + '_S@2x.png', width: 48,),
    )).toList();

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        items: items,
        onTap: (int index) => _ontap(index),
        currentIndex: _currentIndex,
      ),
    );
  }
}