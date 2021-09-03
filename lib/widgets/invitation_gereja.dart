import 'package:flutter/material.dart';

import '../theme.dart';

class InvitationGereja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PhysicalModel(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        elevation: 3,
        shadowColor: Colors.grey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Container(
            height: 210,
            width: MediaQuery.of(context).size.width - (2 * 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Mari bergabung, bertumbuh dan takut akan firman Tuhan.\nAlkitab mengatakan :\nSebab itu marilah kita, oleh Dia, senantiasa mempersembahkan korban syukur kepada Allah, yaitu ucapan bibir yang memuliakan nama-Nya. (Ibrani 13:15)',
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
