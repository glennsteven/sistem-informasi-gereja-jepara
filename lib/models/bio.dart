class Bio {
  int nij;
  String nama;
  String kk;
  String gender;
  String alamat;
  String ttl;
  String noHp;
  String namaAyah;
  String namaIbu;
  String namaPasangan;
  String golDarah;
  String status;
  String msg;

  Bio({
    this.nij,
    this.nama,
    this.kk,
    this.gender,
    this.alamat,
    this.ttl,
    this.noHp,
    this.namaAyah,
    this.namaIbu,
    this.namaPasangan,
    this.golDarah,
    this.status,
    this.msg,
  });
  Bio.fromJson(json) {
    nij = json['nij'];
    nama = json['nama'];
    kk = json['kk'];
    gender = json['gender'];
    alamat = json['alamat'];
    ttl = json['ttl'];
    noHp = json['hp'];
    namaAyah = json['ayah'];
    namaIbu = json['ibu'];
    namaPasangan = json['pasangan'];
    golDarah = json['goldar'];
    status = json['status'];
    msg = json['msg'];
  }
}
