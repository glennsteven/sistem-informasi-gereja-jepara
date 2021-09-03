import 'package:flutter/material.dart';
import 'package:sisteminformasi_gereja/models/renungan.dart';
import 'package:sisteminformasi_gereja/pages/detail_renungan.dart';
import '../theme.dart';

class RenunganCard extends StatelessWidget {
  final Renungan renungan;
  RenunganCard(this.renungan);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailRenungan(renungan),
          ),
        );
      },
      child: Row(
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${DateTime.now()}',
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  renungan.judulren,
                  overflow: TextOverflow.ellipsis,
                  style: blackTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  renungan.isiren,
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
