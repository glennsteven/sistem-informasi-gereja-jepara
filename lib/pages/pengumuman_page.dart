import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sisteminformasi_gereja/models/pengumuman.dart';
import 'package:sisteminformasi_gereja/providers/pengumuman_provider.dart';
import 'package:sisteminformasi_gereja/theme.dart';
import 'package:sisteminformasi_gereja/widgets/pengumuman_card.dart';

class PengumumanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pengumumanProvider = Provider.of<PengumumanProvider>(context);

    return Scaffold(
      body: ListView(
        children: [
          Image.asset(
            'assets/banner_pengumuman.png',
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24,
            ),
            child: Text(
              'GKI Jepara',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24,
            ),
            child: FutureBuilder(
              future: pengumumanProvider.getPengumuman(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Pengumuman> data = snapshot.data;
                  int index = 0;
                  return Column(
                    children: data.map((item) {
                      index++;
                      return Container(
                        margin: EdgeInsets.only(
                          top: index == 1 ? 0 : 30,
                        ),
                        child: PengumumanCard(item),
                      );
                    }).toList(),
                  );
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
