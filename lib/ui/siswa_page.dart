import 'package:flutter/material.dart';
import 'package:sippanse/model/data_siswa.dart';
import 'package:sippanse/ui/pendaftaran_form.dart';
import 'package:sippanse/ui/siswa_detail.dart';

class SiswaPage extends StatefulWidget {
  const SiswaPage({Key? key}) : super(key: key);

  @override
  _SiswaPageState createState() => _SiswaPageState();
}

class _SiswaPageState extends State<SiswaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Data Siswa'),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  child: const Icon(Icons.add, size: 26.0),
                  onTap: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PendaftaranForm()));
                  },
                ))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: const Text('Logout'),
                trailing: const Icon(Icons.logout),
                onTap: () async {},
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            ItemSiswa(
                siswa: siswa(
                    id: 1,
                    nisnSiswa: 'A001',
                    namaSiswa: 'Kamera',
                    jurusanSiswa: 'Kamera',
                    jurusan2Siswa: 'Kamera',
                    nilaiUnSiswa: 5000000)),
          ],
        ));
  }
}

siswa(
    {required int id,
    required String nisnSiswa,
    required String namaSiswa,
    required String jurusanSiswa,
    required String jurusan2Siswa,
    required int nilaiUnSiswa}) {}

class ItemSiswa extends StatelessWidget {
  final Siswa siswa;

  const ItemSiswa({Key? key, required this.siswa}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SiswaDetail(
                        siswa: siswa,
                      )));
        },
        child: Card(
          child: ListTile(
            title: Text(siswa.namaSiswa!),
          ),
        ));
  }
}
