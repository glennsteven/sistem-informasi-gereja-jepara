//class disini untuk mengambil data dari json lalu menampilkan data ke Page Pengumuman
class Pengumuman {
  int id;
  String judul;
  DateTime tanggal;
  String isi;
  String lampiran;
  int nij;

  Pengumuman({
    this.id,
    this.judul,
    this.tanggal,
    this.isi,
    this.lampiran,
    this.nij,
  });

  Pengumuman.fromJson(json) {
    id = json['idPengumuman'];
    judul = json['judul'];
    tanggal = DateTime.tryParse(json['tanggal']);
    isi = json['isi'];
    lampiran = json['lampiran'];
    nij = json['nij'];
  }
}
