part of 'pages.dart';

class Pertemuan extends StatefulWidget {
  const Pertemuan({super.key});

  @override
  State<Pertemuan> createState() => _PertemuanState();
}

class _PertemuanState extends State<Pertemuan> {
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
              child: Text('PERTEMUAN --',
                  style: GoogleFonts.readexPro(
                      fontWeight: FontWeight.w500, fontSize: 22))),
        ]),
      ),
      body: ListView(
        children: [
          Container(
            height: 100,
            child: Padding(
              padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 25),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.calendar_month,
                              color: Color.fromARGB(255, 92, 167, 224),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Text(': Hari, Tanggal',
                                style: GoogleFonts.readexPro(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ]),
                    SizedBox(height: 15),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 92, 167, 224),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              Get.to(() => Modul());
            },
            child: Container(
                height: 70,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 5.0),
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
                                Text('Modul Pembelajaran',
                                    style: GoogleFonts.readexPro(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ]),
                        )))),
          ),
          InkWell(
            onTap: () {
              Get.to(() => PenilaianMahasiswa());
            },
            child: Container(
                height: 70,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 5.0),
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
                                Text('Penilaian Mahasiswa',
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
