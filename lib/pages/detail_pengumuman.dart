import 'package:flutter/material.dart';
import 'package:sisteminformasi_gereja/models/pengumuman.dart';
import 'package:sisteminformasi_gereja/theme.dart';

class DetailPengumuman extends StatelessWidget {
  final Pengumuman pengumuman;
  DetailPengumuman(this.pengumuman);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/banner_pengumuman.png',
              width: MediaQuery.of(context).size.width,
              height: 250,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 230,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${DateTime.now()}',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  '${pengumuman.judul}',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Row(
                          children: [
                            Flexible(
                              child: Text(
                                '${pengumuman.isi}',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          // Image.network(
                          //   pengumuman.lampiran,
                          //   scale: 1.0,
                          // ),
                          Text(
                            'Lampiran',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 310,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
