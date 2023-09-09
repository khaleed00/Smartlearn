part of 'pages.dart';

class BagLaporan extends StatefulWidget {
  const BagLaporan({super.key});

  @override
  State<BagLaporan> createState() => _BagLaporanState();
}

class _BagLaporanState extends State<BagLaporan> {
  List<IsiLaporan> laporanList = [
    IsiLaporan(id: 1, name: "Abdul Rahman Wahid", kuis: "90", tugas: "86"),
    IsiLaporan(id: 2, name: "Budi Cahyono", kuis: "95", tugas: "85"),
    IsiLaporan(id: 3, name: "Halimah Mufita", kuis: "85", tugas: "83"),
    IsiLaporan(id: 4, name: "Levian Dandra", kuis: "87", tugas: "91"),
    IsiLaporan(id: 5, name: "Najla Atikah Dwirahma", kuis: "90", tugas: "87"),
    IsiLaporan(
        id: 6, name: "Ni Putu Tiara Prezilia Adyana", kuis: "90", tugas: "85"),
    IsiLaporan(id: 7, name: "Nourma Layyinna Wijaya", kuis: "89", tugas: "88"),
    IsiLaporan(id: 8, name: "Nur Annisa Septriza", kuis: "86", tugas: "86"),
  ];

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
          title: Column(children: [
            Padding(
                padding: EdgeInsets.only(left: 0.0),
                child: Text('Histori / Laporan',
                    style: GoogleFonts.readexPro(
                        fontWeight: FontWeight.w500, fontSize: 22))),
          ]),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 40.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    "LAPORAN PERKULIAHAN",
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
                                flex: 2,
                                child: Text("No.",
                                    style: GoogleFonts.readexPro(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))),
                            // const SizedBox(width: 30.0),
                            Expanded(
                                flex: 6,
                                child: Text("Nama",
                                    style: GoogleFonts.readexPro(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))),
                            // const SizedBox(width: 82.0),
                            Expanded(
                                flex: 4,
                                child: Text("Kuis",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.readexPro(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))),
                            Expanded(
                                flex: 3,
                                child: Text("Tugas",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.readexPro(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))),
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
                        child: laporanList.isNotEmpty
                            ? ListView.builder(
                                padding: EdgeInsets.fromLTRB(24, 0, 24, 10),
                                itemCount: laporanList.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Text((index + 1).toString(),
                                                style: GoogleFonts.readexPro(
                                                    fontSize: 16)),
                                          ),
                                          Expanded(
                                            flex: 6,
                                            child: Text(laporanList[index].name,
                                                style: GoogleFonts.readexPro(
                                                    fontSize: 16)),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Text(laporanList[index].kuis,
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.readexPro(
                                                    fontSize: 16)),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Text(
                                                laporanList[index].tugas,
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.readexPro(
                                                    fontSize: 16)),
                                          ),
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
                        height: 25,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text("Unduh Laporan",
              style: GoogleFonts.readexPro(fontWeight: FontWeight.w500)),
          icon: Icon(Icons.download),
          backgroundColor: const Color.fromARGB(255, 92, 167, 224),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
