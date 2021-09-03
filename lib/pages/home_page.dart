import 'package:flutter/material.dart';
import 'package:sisteminformasi_gereja/models/pengumuman.dart';
import 'package:sisteminformasi_gereja/pages/profile_page.dart';
import 'package:sisteminformasi_gereja/theme.dart';
import 'beranda.dart';
import 'pengumuman_page.dart';
import 'renungan_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomNavCurrentIndex = 0;
  List<Widget> container = [
    Beranda(),
    PengumumanPage(),
    RenunganPage(),
    ProfilePage()
  ];
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Container(
      child: new Scaffold(
        body: container[bottomNavCurrentIndex],
        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              bottomNavCurrentIndex = index;
            });
          },
          currentIndex: bottomNavCurrentIndex,
          items: [
            BottomNavigationBarItem(
              activeIcon: ImageIcon(
                AssetImage('assets/icon_home.png'),
                color: purpleColor,
              ),
              icon: ImageIcon(
                AssetImage('assets/icon_home.png'),
                color: Colors.grey,
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              activeIcon: ImageIcon(
                AssetImage('assets/icon_pengumuman.png'),
                color: purpleColor,
              ),
              icon: ImageIcon(
                AssetImage('assets/icon_pengumuman.png'),
                color: Colors.grey,
              ),
              label: 'Pengumuman',
            ),
            BottomNavigationBarItem(
              activeIcon: ImageIcon(
                AssetImage('assets/icon_bible.png'),
                color: purpleColor,
              ),
              icon: ImageIcon(
                AssetImage('assets/icon_bible.png'),
                color: Colors.grey,
              ),
              label: 'Renungan',
            ),
            BottomNavigationBarItem(
              activeIcon: ImageIcon(
                AssetImage('assets/icon_profile.png'),
                color: purpleColor,
              ),
              icon: ImageIcon(
                AssetImage('assets/icon_profile.png'),
                color: Colors.grey,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
