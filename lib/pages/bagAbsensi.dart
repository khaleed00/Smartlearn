part of 'pages.dart';

class BagAbsensi extends StatefulWidget {
  const BagAbsensi({super.key});

  @override
  State<BagAbsensi> createState() => _BagAbsensiState();
}

class _BagAbsensiState extends State<BagAbsensi> {
  List<DataAbsensi> absensiList = [
    DataAbsensi(
        id: 1, name: "Abdul Rahman Wahid", waktu: "09.10", status: "Hadir"),
    DataAbsensi(id: 2, name: "Budi Cahyono", waktu: "09.14", status: "Hadir"),
    DataAbsensi(
        id: 3, name: "Halimah Mufita", waktu: "09.17", status: "Terlambat"),
    DataAbsensi(
        id: 4, name: "Levian Dandra", waktu: "09.20", status: "Terlambat"),
    DataAbsensi(
        id: 5, name: "Najla Atikah Dwirahma", waktu: "09.00", status: "Hadir"),
    DataAbsensi(
        id: 6,
        name: "Ni Putu Tiara Prezilia Adyana",
        waktu: "09.12",
        status: "Hadir"),
    DataAbsensi(
        id: 7,
        name: "Nourma Layyinna Wijaya",
        waktu: "09.16",
        status: "Terlambat"),
    DataAbsensi(
        id: 8, name: "Nur Annisa Septriza", waktu: "09.10", status: "Hadir"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 125,
        backgroundColor: const Color.fromARGB(255, 92, 167, 224),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        title: Text('Absensi',
            style: GoogleFonts.readexPro(
                fontWeight: FontWeight.w500, fontSize: 22)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 40.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  "TABEL ABSENSI",
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
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold))),
                          // const SizedBox(width: 30.0),
                          Expanded(
                              flex: 6,
                              child: Text("Nama",
                                  style: GoogleFonts.readexPro(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold))),
                          // const SizedBox(width: 82.0),
                          Expanded(
                              flex: 4,
                              child: Text("Waktu",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.readexPro(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold))),
                          Expanded(
                              flex: 3,
                              child: Text("Status",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.readexPro(
                                      fontSize: 14,
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
                      child: absensiList.isNotEmpty
                          ? ListView.builder(
                              padding: EdgeInsets.fromLTRB(24, 0, 24, 10),
                              itemCount: absensiList.length,
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
                                                  fontSize: 14)),
                                        ),
                                        Expanded(
                                          flex: 6,
                                          child: Text(absensiList[index].name,
                                              style: GoogleFonts.readexPro(
                                                  fontSize: 14)),
                                        ),
                                        Expanded(
                                          flex: 4,
                                          child: Text(absensiList[index].waktu,
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.readexPro(
                                                  fontSize: 14)),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Text(absensiList[index].status,
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.readexPro(
                                                  fontSize: 10.5)),
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
}
