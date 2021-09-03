import 'package:flutter/material.dart';
import 'package:sisteminformasi_gereja/models/sosialmedia.dart';
import 'package:sisteminformasi_gereja/theme.dart';
import 'package:sisteminformasi_gereja/widgets/invitation_gereja.dart';
import 'package:sisteminformasi_gereja/widgets/sosialmedia_gereja.dart';
import 'package:sisteminformasi_gereja/widgets/tentang_gereja.dart';
import 'package:sisteminformasi_gereja/widgets/visimisi_gereja.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 24,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_logo.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Image.asset(
              'assets/icon_vibes.png',
              height: 250,
              width: MediaQuery.of(context).size.width - (2 * 24),
              //fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Text(
              'Tentang Gereja ? ',
              style: blackTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              children: [
                TentangGereja(),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Text(
              'Visi & Misi Gereja',
              style: blackTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              children: [
                VisiMisiGereja(),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Text(
              'Mari Bergabung bersama kami...',
              style: blackTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              children: [
                InvitationGereja(),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Text(
              'Sosial Media',
              style: blackTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          // Note : Sosial Media
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              children: [
                SosialMediaGereja(
                  Sosialmedia(
                      id: 1,
                      imageUrl: 'assets/icon_instagram.png',
                      title: '@gkijosua_indonesia'),
                ),
                SizedBox(
                  height: 8,
                ),
                SosialMediaGereja(
                  Sosialmedia(
                      id: 2,
                      imageUrl: 'assets/icon_youtube.png',
                      title: 'gerejaKemederkaanIndonesia'),
                ),
                SizedBox(
                  height: 8,
                ),
                SosialMediaGereja(
                  Sosialmedia(
                      id: 3,
                      imageUrl: 'assets/icon_facebook.png',
                      title: 'gerejaKemederkaanIndonesia'),
                ),
                SizedBox(
                  height: 8,
                ),
                SosialMediaGereja(
                  Sosialmedia(
                    id: 4,
                    imageUrl: 'assets/icon_whatsapp.png',
                    title: '+62 822 3564 7666',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
