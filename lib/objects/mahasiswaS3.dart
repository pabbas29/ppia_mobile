class MahasiswaS3 {
  final String id;
  final String npm;
  final String namaLengkap;
  final String namaDepan;
  final String namaTengah;
  final String namaBelakang;
  final String semesterMasuk;
  final String tahunMasuk;
  final String matrikulasi;
  final String latar;
  final String status;

  MahasiswaS3._({this.id, this.npm, this.namaLengkap, this.namaDepan, this.namaTengah, this.namaBelakang, this.semesterMasuk, this.tahunMasuk, this.matrikulasi, this.latar, this.status});

  factory MahasiswaS3.fromJson(Map<String, dynamic> json) {
    return new MahasiswaS3._(
      id: json['ID'],
      npm: json['NPM'],
      namaLengkap: json['Nama_Lengkap'],
      namaDepan: json['Nama_Depan'],
      namaTengah: json['Nama_Tengah'],
      namaBelakang: json['Nama_Belakang'],
      semesterMasuk: json['Semester_Masuk'],
      tahunMasuk: json['Tahun_Masuk'],
      matrikulasi: json['Matrikulasi'],
      latar: json['Latar'],
      status: json['Status'],
    );
  }
}