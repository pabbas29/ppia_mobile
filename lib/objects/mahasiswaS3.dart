class MahasiswaS3 {
  String _npm;
  String _namaLengkap;
  String _namaDepan;
  String _namaTengah;
  String _namaBelakang;
  String _semesterMasuk;
  String _tahunMasuk;
  String _matrikulasi;
  String _latar;
  String _status;

  MahasiswaS3(this._namaLengkap);

  getNPM() => this._npm;
  setNPM(npm) => this._npm = npm;

  getNamaLengkap() => this._namaLengkap;

  getNamaDepan() => this._namaDepan;
  setNamaDepan(namaDepan) => this._namaDepan = namaDepan;

  getNamaTengah() => this._namaTengah;
  setNamaTengah(namaTengah) => this._namaTengah = namaTengah;

  getNamaBelakang() => this._namaBelakang;
  setNamaBelakang(namaBelakang) => this._namaBelakang = namaBelakang;

  getSemesterMasuk() => this._semesterMasuk;
  setSemesterMasuk(semesterMasuk) => this._semesterMasuk = semesterMasuk;

  getTahunMasuk() => this._tahunMasuk;
  setTahunMasuk(tahunMasuk) => this._tahunMasuk = tahunMasuk;

  getMatrikulasi() => this._matrikulasi;
  setMatrikulasi(matrikulasi) => this._matrikulasi = matrikulasi;

  getLatar() => this._latar;
  setLatar(latar) => this._latar = latar;

  getStatus() => this._status;
  setStatus(status) => this._status = status;

}