import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sisteminformasi_gereja/models/renungan.dart';

//Untuk menghubungkan API Renungan dengan tipe data async
class RenunganProvider extends ChangeNotifier {
  getRenungan() async {
    var respon =
        await http.get(Uri.parse('http://10.0.2.2:8000/api/getAllRenungan'));
    print(respon.statusCode);
    print(respon.body);

    //Jika respon API nya 200 maka akan mengambil data yang ada di API berupa LIST lalu mengembalikan data ke model renungan
    if (respon.statusCode == 200) {
      List datarenungan = jsonDecode(respon.body);
      List<Renungan> renungan =
          datarenungan.map((item) => Renungan.fromJson(item)).toList();
      return renungan;

      //Jika gagal maka akan mengembalikan data kosongan
    } else {
      return <Renungan>[];
    }
  }
}
