part of 'pages.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _versionName = Text('v0.0.1',
      style: GoogleFonts.readexPro(fontSize: 14, color: Colors.white));
  final _createdBy = Text('Created by Tim Aplikasi Smart Learning 2023',
      style: GoogleFonts.readexPro(
          fontSize: 14,
          fontStyle: FontStyle.italic,
          color: Color.fromARGB(255, 255, 255, 255)));
  final splashDelay = 7;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 92, 167, 224),
      body: InkWell(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(height: 100),
                    Image.asset(
                      'asset/logo.png',
                      height: 200,
                      width: 200,
                    ),
                    Text(
                      'Aplikasi Smart Learning',
                      style: GoogleFonts.readexPro(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(height: 200),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 100,
                        ),
                        Padding(
                            padding: EdgeInsets.only(bottom: 20.0),
                            child: CircularProgressIndicator()),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(children: <Widget>[
                            Center(child: _versionName),
                            Padding(padding: EdgeInsets.only(bottom: 8.0)),
                            Center(child: _createdBy)
                          ]),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
