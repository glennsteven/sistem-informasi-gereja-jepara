import 'package:flutter/material.dart';
import 'package:sisteminformasi_gereja/models/pengumuman.dart';
import 'package:sisteminformasi_gereja/pages/detail_pengumuman.dart';
import 'package:sisteminformasi_gereja/theme.dart';

class PengumumanCard extends StatelessWidget {
  final Pengumuman pengumuman;
  PengumumanCard(this.pengumuman);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPengumuman(pengumuman),
          ),
        );
      },
      child: Row(
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   //'${pengumuman.tanggal}',
                //   ,
                //   overflow: TextOverflow.ellipsis,
                // ),
                Text(
                  //'${pengumuman.judul}',
                  pengumuman.judul,
                  overflow: TextOverflow.ellipsis,
                  style: blackTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  //'${pengumuman.isi}',
                  pengumuman.isi,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Baca Selengkapnya. . .',
                  style: blueTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
