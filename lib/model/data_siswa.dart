class Siswa {
  int? id;
  String? namaSiswa;
  int? nisnSiswa;
  String? jurusanSiswa;
  String? jurusan2Siswa;
  String? nilaiunSiswa;
  String? nemSiswa;

  Siswa(
      {this.id,
      this.nisnSiswa,
      this.namaSiswa,
      this.jurusanSiswa,
      this.jurusan2Siswa,
      this.nilaiunSiswa,
      this.nemSiswa});

  factory Siswa.fromJson(Map<String, dynamic> obj) {
    return Siswa(
        id: int.tryParse(obj["id"]),
        nisnSiswa: obj['nisn'],
        namaSiswa: obj['nama_Siswa'],
        jurusanSiswa: obj['jurusan_Siswa'],
        jurusan2Siswa: obj['jurusan2_siswa'],
        nilaiunSiswa: obj['nilaiun_siswa'],
        nemSiswa: obj['nem_siswa']);
  }
}
