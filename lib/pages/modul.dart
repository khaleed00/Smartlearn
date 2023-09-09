part of 'pages.dart';

class Modul extends StatefulWidget {
  const Modul({super.key});

  @override
  State<Modul> createState() => _ModulState();
}

class _ModulState extends State<Modul> {
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
          Text('MODUL',
              style: GoogleFonts.readexPro(
                  fontWeight: FontWeight.w500, fontSize: 22)),
          Text('PEMBELAJARAN',
              style: GoogleFonts.readexPro(
                  fontWeight: FontWeight.w500, fontSize: 22)),
        ]),
      ),
    );
  }
}