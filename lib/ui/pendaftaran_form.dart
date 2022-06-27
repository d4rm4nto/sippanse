import 'package:flutter/material.dart';
import 'package:sippanse/model/data_siswa.dart';

class PendaftaranForm extends StatefulWidget {
  Siswa? siswa;

  PendaftaranForm({Key? key, this.siswa}) : super(key: key);

  @override
  _PendaftaranFormState createState() => _PendaftaranFormState();
}

class _PendaftaranFormState extends State<PendaftaranForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  String judul = "TAMBAH SISWA";
  String tombolSubmit = "SIMPAN";

  final _nisnSiswaTextboxController = TextEditingController();
  final _namaSiswaTextboxController = TextEditingController();
  final _jurusanSiswaTextboxController = TextEditingController();
  final _jurusan2SiswaTextboxController = TextEditingController();
  final _nilaiUnSiswaTextboxController = TextEditingController();
  final _nemSiswaTextboxController = TextEditingController();

  @override
  void initState() {
    super.initState();
    isUpdate();
  }

  isUpdate() {
    if (widget.siswa != null) {
      setState(() {
        judul = "UBAH DATA SISWA";
        tombolSubmit = "UBAH";
        _nisnSiswaTextboxController.text = widget.siswa!.nisnSiswa! as String;
        _namaSiswaTextboxController.text = widget.siswa!.namaSiswa!;
        _jurusanSiswaTextboxController.text = widget.siswa!.jurusanSiswa!;
        _jurusan2SiswaTextboxController.text = widget.siswa!.jurusan2Siswa!;
        _nilaiUnSiswaTextboxController.text = widget.siswa!.jurusan2Siswa!;
        _nemSiswaTextboxController.text = widget.siswa!.jurusan2Siswa!;
      });
    } else {
      judul = "TAMBAH DATA";
      tombolSubmit = "SIMPAN";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(judul)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _nisnSiswaTextField(),
                _namaSiswaTextField(),
                _jurusanSiswaTextField(),
                _jurusan2SiswaTextField(),
                _nilaiUnSiswaTextField(),
                _nemSiswaTextField(),
                _buttonSubmit()
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Membuat Textbox Kode Produk
  Widget _nisnSiswaTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "NISN Siswa"),
      keyboardType: TextInputType.text,
      controller: _nisnSiswaTextboxController,
      validator: (value) {
        if (value!.isEmpty) {
          return "NISN harus diisi";
        }
        return null;
      },
    );
  }

  //Membuat Textbox Nama Produk
  Widget _namaSiswaTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nama Siswa"),
      keyboardType: TextInputType.text,
      controller: _namaSiswaTextboxController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Nama Siswa harus diisi";
        }
        return null;
      },
    );
  }

  //Membuat Textbox pilihan jurusan
  Widget _jurusanSiswaTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Jurusan"),
      keyboardType: TextInputType.text,
      controller: _jurusanSiswaTextboxController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Jurusan Harus harus diisi";
        }
        return null;
      },
    );
  }

  //Membuat Textbox pilihan jurusan
  Widget _jurusan2SiswaTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Jurusan1"),
      keyboardType: TextInputType.text,
      controller: _jurusan2SiswaTextboxController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Jurusan2 Produk harus diisi";
        }
        return null;
      },
    );
  }

  //Membuat Textbox pilihan jurusan
  Widget _nilaiUnSiswaTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nilai UN"),
      keyboardType: TextInputType.text,
      controller: _nilaiUnSiswaTextboxController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Nilai UN harus diisi";
        }
        return null;
      },
    );
  }

  //Membuat Textbox pilihan jurusan
  Widget _nemSiswaTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Nem"),
      keyboardType: TextInputType.text,
      controller: _nemSiswaTextboxController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Nem Siswa harus diisi";
        }
        return null;
      },
    );
  }

  //Membuat Tombol Simpan/Ubah
  Widget _buttonSubmit() {
    return OutlinedButton(
        child: Text(tombolSubmit),
        onPressed: () {
          var validate = _formKey.currentState!.validate();
        });
  }
}
