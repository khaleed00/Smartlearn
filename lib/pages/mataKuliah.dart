part of 'pages.dart';

class MataKuliah extends StatefulWidget {
  const MataKuliah({super.key});

  @override
  State<MataKuliah> createState() => _MataKuliahState();
}

class _MataKuliahState extends State<MataKuliah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          toolbarHeight: 125,
          backgroundColor: Color.fromARGB(255, 92, 167, 224),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('MATA KULIAH', style: GoogleFonts.readexPro(fontSize: 19)),
              Text('NAMA MATA KULIAH - KELAS',
                  style: GoogleFonts.readexPro(fontSize: 19)),
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
                height: 170,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 30.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      elevation: 5,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 22),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Icon(Icons.av_timer,
                                      size: 30,
                                      color: Color.fromARGB(255, 92, 167, 224)),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    ": Hari, --.-- WIB",
                                    style: GoogleFonts.readexPro(fontSize: 25),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Icon(Icons.location_on_outlined,
                                      size: 30,
                                      color: Color.fromARGB(255, 92, 167, 224)),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    ": Ruangan --",
                                    style: GoogleFonts.readexPro(fontSize: 25),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 92, 167, 224),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                              ),
                            ),
                          ]),
                    ))),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
              child: Center(
                  child: Text(
                'DAFTAR PERTEMUAN',
                style: GoogleFonts.readexPro(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              )),
            ),
            for (var i = 0; i < 16; i++)
              InkWell(
                onTap: () {
                  Get.to(() => Pertemuan());
                },
                child: Container(
                    height: 70,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 3.0),
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
                                    Text('Pertemuan ' + (i + 1).toString(),
                                        style: GoogleFonts.readexPro(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ]),
                            )))),
              )
          ],
        ));
  }
}
