part of 'pages.dart';

class BagTugas extends StatefulWidget {
  const BagTugas({super.key});

  @override
  State<BagTugas> createState() => _BagTugasState();
}

class _BagTugasState extends State<BagTugas> {
  List<NilaiTugas> tugasList = [
    NilaiTugas(id: 1, name: "Abdul Rahman Wahid", nilai: 0),
    NilaiTugas(id: 2, name: "Budi Cahyono", nilai: 0),
    NilaiTugas(id: 3, name: "Halimah Mufita", nilai: 0),
    NilaiTugas(id: 4, name: "Levian Dandra", nilai: 0),
    NilaiTugas(id: 5, name: "Najla Atikah Dwirahma", nilai: 0),
    NilaiTugas(id: 6, name: "Ni Putu Tiara Prezilia Adyana", nilai: 0),
    NilaiTugas(id: 7, name: "Nourma Layyinna Wijaya", nilai: 0),
    NilaiTugas(id: 8, name: "Nur Annisa Septriza", nilai: 0),
  ];

  late TextEditingController controller;
  String nilai = '';

  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 125,
        backgroundColor: Color.fromARGB(255, 92, 167, 224),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        title: Text('Tugas',
            style: GoogleFonts.readexPro(
                fontWeight: FontWeight.w500, fontSize: 22)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 40.0),
        child: Column(children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "TABEL PENILAIAN TUGAS",
                style: GoogleFonts.readexPro(
                    fontWeight: FontWeight.w700, fontSize: 25),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            flex: 20,
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              elevation: 5,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 15, 24, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Text("No.",
                                style: GoogleFonts.readexPro(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))),
                        // const SizedBox(width: 30.0),
                        Expanded(
                            flex: 2,
                            child: Text("Nama",
                                style: GoogleFonts.readexPro(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))),
                        // const SizedBox(width: 82.0),
                        Expanded(
                            flex: 2,
                            child: Text("Nilai",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.readexPro(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))),
                        Expanded(
                            flex: 1,
                            child: Text("Aksi",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.readexPro(
                                    fontSize: 16, fontWeight: FontWeight.bold)))
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 25,
                    thickness: 2,
                    indent: 22,
                    endIndent: 22,
                  ),

                  // -- CONTOH DATA --
                  Expanded(
                    child: tugasList.isNotEmpty
                        ? ListView.builder(
                            padding: EdgeInsets.fromLTRB(24, 0, 24, 10),
                            itemCount: tugasList.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text((index + 1).toString(),
                                            style: GoogleFonts.readexPro(
                                                fontSize: 16)),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(tugasList[index].name,
                                            style: GoogleFonts.readexPro(
                                                fontSize: 16)),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text('${tugasList[index].nilai}',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.readexPro(
                                                fontSize: 16)),
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: InkWell(
                                            onTap: () async {
                                              final nilai = await isiNilai();
                                              if (nilai == null ||
                                                  nilai.isEmpty) return;

                                              setState(() => this
                                                  .tugasList[index]
                                                  .nilai = int.parse(nilai));
                                            },
                                            child: Icon(Icons.note_alt,
                                                color: Color.fromARGB(
                                                    255, 0, 213, 87),
                                                size: 20),
                                          )),
                                    ],
                                  ),
                                  const Divider(
                                    color: Colors.black,
                                    height: 20,
                                    thickness: 1,
                                    indent: 0,
                                    endIndent: 0,
                                  ),
                                ],
                              );
                            },
                          )
                        : Text("No Data Found"),
                  ),
                  const SizedBox(
                    height: 55,
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
      floatingActionButton: Container(
        height: 80.0,
        width: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color.fromARGB(255, 92, 167, 224),
            child: const Icon(Icons.camera),
          ),
        ),
      ),
    );
  }

  Future<String?> isiNilai() => showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Masukkan Nilai"),
          content: TextField(
            autofocus: true,
            decoration: InputDecoration(hintText: "Silakan masukkan nilai"),
            controller: controller,
            onSubmitted: (_) => submit(),
            keyboardType: TextInputType.number,
          ),
          actions: [
            TextButton(
              child: Text("INPUT"),
              onPressed: submit,
            )
          ],
        ),
      );

  void submit() {
    Navigator.of(context).pop(controller.text);

    controller.clear();
  }
}
