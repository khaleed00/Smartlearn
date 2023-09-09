part of 'pages.dart';

class PenilaianMahasiswa extends StatefulWidget {
  const PenilaianMahasiswa({super.key});

  @override
  State<PenilaianMahasiswa> createState() => _PenilaianMahasiswaState();
}

class _PenilaianMahasiswaState extends State<PenilaianMahasiswa> {
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
          title: Column(
            children: [
              Text('PENILAIAN',
                  style: GoogleFonts.readexPro(
                      fontWeight: FontWeight.w500, fontSize: 22)),
              Text('MAHASISWA',
                  style: GoogleFonts.readexPro(
                      fontWeight: FontWeight.w500, fontSize: 22)),
            ],
          )),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              Get.to(() => BagAbsensi());
            },
            child: Container(
                height: 70,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 3.0),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Absensi',
                                    style: GoogleFonts.readexPro(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ]),
                        )))),
          ),
          InkWell(
            onTap: () {
              Get.to(() => BagKeaktifan());
            },
            child: Container(
                height: 70,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 3.0),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Keaktifan',
                                    style: GoogleFonts.readexPro(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ]),
                        )))),
          ),
          InkWell(
            onTap: () {
              Get.to(() => BagKuis());
            },
            child: Container(
                height: 70,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 3.0),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Kuis',
                                    style: GoogleFonts.readexPro(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ]),
                        )))),
          ),
          InkWell(
            onTap: () {
              Get.to(() => BagTugas());
            },
            child: Container(
                height: 70,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 3.0),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Tugas',
                                    style: GoogleFonts.readexPro(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ]),
                        )))),
          ),
          InkWell(
            onTap: () {
              Get.to(() => BagLaporan());
            },
            child: Container(
                height: 70,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 3.0),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Histori / Laporan',
                                    style: GoogleFonts.readexPro(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ]),
                        )))),
          )
        ],
      ),
    );
  }
}
