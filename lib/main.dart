import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sisteminformasi_gereja/pages/home_page.dart';
import 'package:sisteminformasi_gereja/pages/login_page.dart';
import 'package:sisteminformasi_gereja/providers/pengumuman_provider.dart';
import 'package:sisteminformasi_gereja/providers/renungan_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PengumumanProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => RenunganProvider(),
        ),
      ],
      child: MaterialApp(
        home: CekAuth(),
      ),
    );
  }
}

class CekAuth extends StatefulWidget {
  @override
  _CheckAuthState createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CekAuth> {
  bool isAuth = false;
  @override
  // ignore: must_call_super
  void initState() {
    cekLogin();
    super.initState();
  }

  void cekLogin() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    if (token != null) {
      setState(() {
        isAuth = true;
      });
    }
  }

  Widget build(BuildContext context) {
    Widget child;
    if (isAuth) {
      child = HomePage();
    } else {
      child = LoginPage();
    }
    return Scaffold(
      body: child,
    );
  }
}
