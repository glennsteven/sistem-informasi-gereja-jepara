//Model renungan untuk menampilkan data ke tampilan PAGE renungan
class Renungan {
  int id;
  String judulren;
  DateTime tanggal;
  String isiren;
  String lampiranren;
  int nijren;

  Renungan({
    this.id,
    this.judulren,
    this.tanggal,
    this.isiren,
    this.lampiranren,
    this.nijren,
  });

  Renungan.fromJson(json) {
    id = json['idRenungan'];
    judulren = json['judul'];
    tanggal = DateTime.tryParse(json['tanggal']);
    isiren = json['isi'];
    lampiranren = json['lampiran'];
    nijren = json['nij'];
  }
}
