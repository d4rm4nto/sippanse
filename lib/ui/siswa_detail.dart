import 'package:flutter/material.dart';
import 'package:sippanse/model/data_siswa.dart';
import 'package:sippanse/ui/pendaftaran_form.dart';

class SiswaDetail extends StatefulWidget {
  Siswa? produk;

  var siswa;

  SiswaDetail({Key? key, this.siswa}) : super(key: key);

  @override
  _SiswaDetailState createState() => _SiswaDetailState();
}

class _SiswaDetailState extends State<SiswaDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Siswa'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "NISN : ${widget.siswa!.kodesiswa}",
              style: const TextStyle(fontSize: 20.0),
            ),
            Text(
              "Nama : ${widget.siswa!.namasiswa}",
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              "Jurusan : ${widget.siswa!.jurusansiswa}",
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              "Jurusan2 : ${widget.siswa!.jurusan2siswa}",
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              "Nilai UN : ${widget.siswa!.nilaiunsiswa}",
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              "Nem : ${widget.siswa!.nemsiswa}",
              style: const TextStyle(fontSize: 18.0),
            ),
            _tombolHapusEdit()
          ],
        ),
      ),
    );
  }

  Widget _tombolHapusEdit() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        //Tombol Edit
        OutlinedButton(
            child: const Text("EDIT"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PendaftaranForm(
                            siswa: widget.produk!,
                          )));
            }),
        //Tombol Hapus
        OutlinedButton(
            child: const Text("DELETE"), onPressed: () => confirmHapus()),
      ],
    );
  }

  void confirmHapus() {
    AlertDialog alertDialog = AlertDialog(
      content: const Text("Yakin ingin menghapus data ini?"),
      actions: [
//tombol hapus
        OutlinedButton(
          child: const Text("Ya"),
          onPressed: () {},
        ),
        //tombol batal
        OutlinedButton(
          child: const Text("Batal"),
          onPressed: () => Navigator.pop(context),
        )
      ],
    );

    showDialog(builder: (context) => alertDialog, context: context);
  }
}
