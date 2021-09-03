import 'package:flutter/material.dart';
import 'package:sisteminformasi_gereja/theme.dart';

class TentangGereja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PhysicalModel(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        elevation: 2,
        shadowColor: Colors.grey,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18,
          ),
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width - (2 * 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Menerapkan doktrin yang Alkitabiah, fokus kepada Yesus, dan dinamis sesuai tuntunan Roh Kudus Membangun pemimpin baru melalui komunitas sel dan pemuridan Memperlengkapi jemaat dengan pengetahuan-pengetahuan untuk bersaing di marketplace Memperkuat area pendidikan berbasis karakter Bersama Tubuh Kristus memberkati kota, bangsa dan dunia',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
