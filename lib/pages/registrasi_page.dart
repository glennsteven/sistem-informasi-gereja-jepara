import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sisteminformasi_gereja/pages/login_page.dart';
import 'package:sisteminformasi_gereja/providers/api.dart';
import 'package:crypto/crypto.dart';
import 'package:alert/alert.dart';
import '../theme.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  bool _isLoading = false;

  //Variable yang akan digunakan untuk menampung inputan user
  final _formKey = GlobalKey<FormState>();
  var password;
  var nama;
  var nokk;
  var gender;
  var alamat;
  var ttl;
  var hp;
  var namaayah;
  var namaibu;
  var namapasangan;
  var goldarah;
  var idDesa;
  var idHome;
  var idMentor;
  var digest;
  final myController = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //Fungsi untuk menampilkan pesan
  _showMsg(nij) {
    final snackBar = SnackBar(
      content: Text(nij),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {},
      ),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  //Untuk membuat isi tampilannya
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 24,
            ),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/btn_back.png',
                  width: 40,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24,
              top: 20,
            ),
            child: Text(
              'Hallo!!!',
              style: blackTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24,
            ),
            child: Text(
              'Mohon lengkapi form dibawah ini...',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            child: Stack(
              children: [
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 4.0,
                          color: Colors.white,
                          margin: EdgeInsets.only(left: 20, right: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextFormField(
                                    style: TextStyle(color: Color(0xFF000000)),
                                    cursorColor: Color(0xFF9b9b9b),
                                    controller: myController,
                                    obscureText: true,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.password,
                                        color: Colors.grey,
                                      ),
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    validator: (passwordValue) {
                                      if (passwordValue.isEmpty) {
                                        return 'Mohon masukkan Password anda';
                                      }
                                      digest = passwordValue;
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Color(0xFF000000)),
                                    cursorColor: Color(0xFF9b9b9b),
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.insert_emoticon,
                                        color: Colors.grey,
                                      ),
                                      hintText: "Masukkan Nama Lengkap",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    validator: (namalengkap) {
                                      if (namalengkap.isEmpty) {
                                        return 'Mohon masukkan nama lengkap anda';
                                      }
                                      nama = namalengkap;
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Color(0xFF000000)),
                                    cursorColor: Color(0xFF9b9b9b),
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.insert_emoticon,
                                        color: Colors.grey,
                                      ),
                                      hintText: "Masukkan Nomor KK",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    validator: (nomorkk) {
                                      if (nomorkk.isEmpty) {
                                        return 'Mohon Masukkan No.KK Anda';
                                      }
                                      nokk = nomorkk;
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Color(0xFF000000)),
                                    cursorColor: Color(0xFF9b9b9b),
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.wc,
                                        color: Colors.grey,
                                      ),
                                      hintText: "Jenis Kelamin",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    validator: (jeniskelamin) {
                                      if (jeniskelamin.isEmpty) {
                                        return 'Mohon pilih jenis kelamin anda';
                                      }
                                      gender = jeniskelamin;
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Color(0xFF000000)),
                                    cursorColor: Color(0xFF9b9b9b),
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.maps_home_work,
                                        color: Colors.grey,
                                      ),
                                      hintText: "Alamat Lengkap",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    validator: (alamatlengkap) {
                                      if (alamatlengkap.isEmpty) {
                                        return 'Masukkan Alamat Lengkap';
                                      }
                                      alamat = alamatlengkap;
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Color(0xFF000000)),
                                    cursorColor: Color(0xFF9b9b9b),
                                    keyboardType: TextInputType.text,
                                    //obscureText: true,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.add_location,
                                        color: Colors.grey,
                                      ),
                                      hintText: "Tempat, Tanggal Lahir",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    validator: (tempattanggal) {
                                      if (tempattanggal.isEmpty) {
                                        return 'Masukkan Tempat, tanggal lahir';
                                      }
                                      ttl = tempattanggal;
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Color(0xFF000000)),
                                    cursorColor: Color(0xFF9b9b9b),
                                    keyboardType: TextInputType.text,
                                    //obscureText: true,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.add_call,
                                        color: Colors.grey,
                                      ),
                                      hintText: "No.Hp",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    validator: (nomorhp) {
                                      if (nomorhp.isEmpty) {
                                        return 'Masukkan Nomor Hp';
                                      }
                                      hp = nomorhp;
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Color(0xFF000000)),
                                    cursorColor: Color(0xFF9b9b9b),
                                    keyboardType: TextInputType.text,
                                    //obscureText: true,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.group_sharp,
                                        color: Colors.grey,
                                      ),
                                      hintText: "Nama Ayah",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    validator: (namaayahkandung) {
                                      if (namaayahkandung.isEmpty) {
                                        return 'Masukkan Nama Ayah';
                                      }
                                      namaayah = namaayahkandung;
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Color(0xFF000000)),
                                    cursorColor: Color(0xFF9b9b9b),
                                    keyboardType: TextInputType.text,
                                    //obscureText: true,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.group_sharp,
                                        color: Colors.grey,
                                      ),
                                      hintText: "Nama Ibu",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    validator: (namaibukandung) {
                                      if (namaibukandung.isEmpty) {
                                        return 'Masukkan Nama Ibu';
                                      }
                                      namaibu = namaibukandung;
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Color(0xFF000000)),
                                    cursorColor: Color(0xFF9b9b9b),
                                    keyboardType: TextInputType.text,
                                    //obscureText: true,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.favorite,
                                        color: Colors.grey,
                                      ),
                                      hintText: "Nama Pasangan",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    validator: (namapasanganhidup) {
                                      if (namapasanganhidup.isEmpty) {
                                        return 'Masukkan Nama Pasangan';
                                      }
                                      namapasangan = namapasanganhidup;
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    style: TextStyle(color: Color(0xFF000000)),
                                    cursorColor: Color(0xFF9b9b9b),
                                    keyboardType: TextInputType.text,
                                    //obscureText: true,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.bloodtype,
                                        color: Colors.grey,
                                      ),
                                      hintText: "Golongan Darah",
                                      hintStyle: TextStyle(
                                          color: Color(0xFF9b9b9b),
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    validator: (golongandarah) {
                                      if (golongandarah.isEmpty) {
                                        return 'Masukkan Golongan Darah';
                                      }
                                      goldarah = golongandarah;
                                      return null;
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: ElevatedButton(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: 8,
                                          bottom: 8,
                                          left: 10,
                                          right: 10,
                                        ),
                                        child: Text(
                                          _isLoading
                                              ? 'Proccessing...'
                                              : 'Register',
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        var bytes =
                                            utf8.encode(myController.text);
                                        digest = md5.convert(bytes);

                                        //print(digest);
                                        if (_formKey.currentState.validate()) {
                                          _register();
                                        }
                                      },
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                purpleColor),
                                        shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(17),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Sudah Memiliki Akun',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  //Fungsi untuk registrasi yang akan dikirim ke API
  void _register() async {
    setState(() {
      _isLoading = true;
    });
    var data = {
      'password': digest,
      'nama': nama,
      'kk': nokk,
      'gender': gender,
      'alamat': alamat,
      'ttl': ttl,
      'hp': hp,
      'ayah': namaayah,
      'ibu': namaibu,
      'pasangan': namapasangan,
      'goldar': goldarah
    };

    //Untuk url API dan mengecek kondisi apakah sudah terhubung dengan API atau belum
    var res = await Network()
        .authData(data, Uri.parse('http://10.0.2.2:8000/api/registrasi'));
    var body = json.decode(res.body);

    if (res.statusCode == 200) {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', json.encode(body['nij']));
      localStorage.setString('user', json.encode(body['nama']));

      //Jika StatusCode nya = 200 maka sistem akan mengembalikan nilai berupa NIJ dengan pop Up
      Alert(message: 'Nomor Induk Jemaat : ' + json.encode(body['nij'])).show();
      Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => LoginPage()),
      );

      //Jika Registrasi yang dilakukan belum diisi atau kesalahan input maka akan menampilkan pesan eror
    } else {
      _showMsg("Salah melakukan registrasi");
    }

    setState(() {
      _isLoading = false;
    });
  }
}
