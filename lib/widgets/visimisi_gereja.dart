import 'package:flutter/material.dart';

import '../theme.dart';

class VisiMisiGereja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PhysicalModel(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        elevation: 3,
        shadowColor: Colors.grey,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18,
          ),
          child: Container(
            height: 140,
            width: MediaQuery.of(context).size.width - (2 * 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Menjadi gereja yg dewasa, penuh Roh dan berdampak bagi kota, bangsa dan dunia. Membangun generasi yang unggul dan berbuah di semua area kehidupan.',
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
