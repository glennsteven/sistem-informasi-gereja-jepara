import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sisteminformasi_gereja/models/pengumuman.dart';

//Untuk mengakses API Pengumuman dengan tipe data async
class PengumumanProvider extends ChangeNotifier {
  getPengumuman() async {
    var result =
        await http.get(Uri.parse('http://10.0.2.2:8000/api/getAllPengumuman'));
    print(result.statusCode);
    print(result.body);
    //disini dilakukan pengkodisian jika == 200 maka akan mengembalikan data ke model pengumuman lalu ditampilkan ke Page Pengumuman
    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Pengumuman> pengumuman =
          data.map((item) => Pengumuman.fromJson(item)).toList();
      return pengumuman;
      //Jika data kosong maka akan menampilkan list kosongan.
    } else {
      return <Pengumuman>[];
    }
  }
}
