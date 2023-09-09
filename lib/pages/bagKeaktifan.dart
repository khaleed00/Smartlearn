part of 'pages.dart';

class BagKeaktifan extends StatefulWidget {
  const BagKeaktifan({super.key});

  @override
  State<BagKeaktifan> createState() => _BagKeaktifanState();
}

class _BagKeaktifanState extends State<BagKeaktifan> {
  List keaktifanList = [
    "Abdul Rahman Wahid",
    "Budi Cahyono",
    "Febrian Nugroho",
    "Halimah Mufita",
    "Levian Dandra",
    "Najla Atikah Dwirahma",
    "Ni Putu Tiara Prezilia Adyana",
    "Nourma Layyinna Wijaya",
    "Nur Annisa Septriza",
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
        title: Text('Keaktifan',
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
                  "TABEL KEAKTIFAN",
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
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                          // const SizedBox(width: 30.0),
                          Expanded(
                            flex: 2,
                            child: Text("Nama",
                                style: GoogleFonts.readexPro(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                          // const SizedBox(width: 82.0),
                          Expanded(
                            flex: 2,
                            child: Text("Keaktifan",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.readexPro(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
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
                      child: keaktifanList.isNotEmpty
                          ? ListView.builder(
                              padding: EdgeInsets.fromLTRB(24, 0, 24, 10),
                              itemCount: keaktifanList.length,
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
                                          child: Text(keaktifanList[index],
                                              style: GoogleFonts.readexPro(
                                                  fontSize: 16)),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Text("✔",
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
