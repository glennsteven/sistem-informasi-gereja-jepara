import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sisteminformasi_gereja/models/renungan.dart';
import 'package:sisteminformasi_gereja/providers/renungan_provider.dart';
import 'package:sisteminformasi_gereja/theme.dart';
import 'package:sisteminformasi_gereja/widgets/renungan_card.dart';

class RenunganPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var renungProvider = Provider.of<RenunganProvider>(context);

    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          Image.asset(
            'assets/banner.png',
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
              'Renungan',
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
              future: renungProvider.getRenungan(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Renungan> datarenungan = snapshot.data;
                  int index = 0;
                  return Column(
                    children: datarenungan.map((item) {
                      index++;
                      return Container(
                        margin: EdgeInsets.only(
                          top: index == 1 ? 0 : 30,
                        ),
                        child: RenunganCard(item),
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
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            height: 50,
            width: MediaQuery.of(context).size.width - (2 * 24),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(purpleColor),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
              ),
              child: Text(
                'Video Renungan',
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
