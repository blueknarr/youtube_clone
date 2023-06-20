import 'package:flutter/material.dart';
import '../components/nav_widget.dart';
import '../components/shorts_widget.dart';
import '../components/video_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Image.network(
            'https://e7.pngegg.com/pngimages/1010/301/png-clipart-youtube-logo-youtube-computer-icons-logo-youtube-angle-rectangle.png',
            //height: 10,
            //width: double.infinity,
            fit: BoxFit.cover,
          ),
          title: const Text(
            'YouTube',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.rss_feed_outlined),
              color: Colors.white,
              onPressed: () {
                print('noti');
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications_none_outlined),
              color: Colors.white,
              onPressed: () {
                print('noti');
              },
            ),
            IconButton(
              icon: const Icon(Icons.search_outlined),
              color: Colors.white,
              onPressed: () {
                print('search');
              },
            ),
            IconButton(
              icon: const Icon(Icons.account_circle_outlined),
              color: Colors.white,
              onPressed: () {
                print('account');
              },
            ),
          ],
        ),
        body: ListView(
          children: const [
            NavWidget(),
            VideoWidget(),
            VideoWidget(),
            ShortsWidget(),
            SizedBox(height: 20),
            VideoWidget(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          //fixedColor: Colors.black,
          //selectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          currentIndex: _index,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: '홈',
              icon: Icon(Icons.home_outlined),
            ),
            BottomNavigationBarItem(
                label: 'Shorts',
                icon: Icon(
                  Icons.videocam_outlined,
                )),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.add_circle_outline_outlined),
            ),
            BottomNavigationBarItem(
              label: '구독',
              icon: Icon(Icons.subscriptions_outlined),
            ),
            BottomNavigationBarItem(
              label: '홈',
              icon: Icon(Icons.video_library_outlined),
            ),
          ],
        ));
  }
}
