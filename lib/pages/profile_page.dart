import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sisteminformasi_gereja/pages/login_page.dart';
import 'package:sisteminformasi_gereja/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void logout() async {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.remove('user');
      localStorage.remove('token');
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/btn_back.png',
                    width: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      logout();
                    },
                    child: Text(
                      'Logout',
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24,
              ),
              child: Text(
                'Hallo!!!',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24,
              ),
              child: Text(
                'Mohon lengkapi form dibawah ini...',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 26,
              ),
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(
                      color: Color(0xFF000000),
                    ),
                    cursorColor: Color(0xFF9b9b9b),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.insert_emoticon,
                        color: Colors.grey,
                      ),
                      hintText: "Nama Lengkap",
                      hintStyle: TextStyle(
                          color: Color(0xFF9b9b9b),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: Color(0xFF000000),
                    ),
                    cursorColor: Color(0xFF9b9b9b),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.wc,
                        color: Colors.grey,
                      ),
                      hintText: "Gender",
                      hintStyle: TextStyle(
                          color: Color(0xFF9b9b9b),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: Color(0xFF000000),
                    ),
                    cursorColor: Color(0xFF9b9b9b),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.maps_home_work,
                        color: Colors.grey,
                      ),
                      hintText: "Alamat",
                      hintStyle: TextStyle(
                          color: Color(0xFF9b9b9b),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: Color(0xFF000000),
                    ),
                    cursorColor: Color(0xFF9b9b9b),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.add_location,
                        color: Colors.grey,
                      ),
                      hintText: "Tempat, tanggal lahir",
                      hintStyle: TextStyle(
                          color: Color(0xFF9b9b9b),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: Color(0xFF000000),
                    ),
                    cursorColor: Color(0xFF9b9b9b),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.add_call,
                        color: Colors.grey,
                      ),
                      hintText: "No. Handphone",
                      hintStyle: TextStyle(
                          color: Color(0xFF9b9b9b),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: Color(0xFF000000),
                    ),
                    cursorColor: Color(0xFF9b9b9b),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.group_sharp,
                        color: Colors.grey,
                      ),
                      hintText: "Nama Ayah",
                      hintStyle: TextStyle(
                          color: Color(0xFF9b9b9b),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: Color(0xFF000000),
                    ),
                    cursorColor: Color(0xFF9b9b9b),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.group_sharp,
                        color: Colors.grey,
                      ),
                      hintText: "Nama Ibu",
                      hintStyle: TextStyle(
                          color: Color(0xFF9b9b9b),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(
                      color: Color(0xFF000000),
                    ),
                    cursorColor: Color(0xFF9b9b9b),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.favorite,
                        color: Colors.grey,
                      ),
                      hintText: "Nama Pasangan",
                      hintStyle: TextStyle(
                          color: Color(0xFF9b9b9b),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Edit',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
