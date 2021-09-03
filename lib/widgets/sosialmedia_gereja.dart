import 'package:flutter/material.dart';
import 'package:sisteminformasi_gereja/models/sosialmedia.dart';
import 'package:sisteminformasi_gereja/theme.dart';

class SosialMediaGereja extends StatelessWidget {
  final Sosialmedia sosialmedia;
  SosialMediaGereja(this.sosialmedia);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffE91111),
      ),
      height: 70,
      width: MediaQuery.of(context).size.width - (2 * 15),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: Row(
          children: [
            Image.asset(
              sosialmedia.imageUrl,
              width: 30,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              sosialmedia.title,
              style: whiteTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
