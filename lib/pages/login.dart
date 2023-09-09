part of 'pages.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscure = false;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final nip = SizedBox(
      width: 300,
      child: TextFormField(
        autofocus: false,
        initialValue: '',
        decoration: InputDecoration(
          hintText: 'NOMOR INDUK PEGAWAI',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ),
      ),
    );

    final password = SizedBox(
      width: 300,
      child: TextFormField(
        controller: passwordController,
        autofocus: false,
        obscureText: obscure == true ? true : false,
        decoration: InputDecoration(
          hintText: 'PASSWORD',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          suffixIcon: InkWell(
            onTap: () {
              setState(() {
                obscure = !obscure;
              });
            },
            child: Icon(
              obscure == true ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );

    final loginButton = Container(
      width: 100,
      height: 45,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 92, 167, 224),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        },
        child: Text(
          'MASUK',
          style: GoogleFonts.readexPro(fontSize: 14, color: Colors.white),
        ),
      ),
    );

    final backgroundPutih = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 600.0,
        height: 450.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100), topRight: Radius.circular(100))),
      ),
    );

    final formContainer = Align(
      alignment: Alignment.center,
      child: Container(
        height: 350.0,
        width: 330.0,
        decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 15.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 2.0),
              )
            ]),
      ),
    );

    final logo = Image.asset(
      'asset/logo.png',
      height: 200,
      width: 200,
    );

    final lupaLabel = Row(
      children: [
        Text(
          'Lupa Password?',
          style: GoogleFonts.readexPro(
              fontSize: 12, color: Color.fromARGB(0, 58, 56, 56)),
        ),
        TextButton(
          child: Text(
            'Klik Disini.',
            style: GoogleFonts.readexPro(
                fontSize: 12, color: Color.fromARGB(0, 58, 56, 56)),
          ),
          onPressed: () {},
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 92, 167, 224),
      body: Stack(
        children: <Widget>[
          backgroundPutih,
          Center(
            child: formContainer,
          ),
          Center(
            child: Container(
              height: 500,
              width: 350,
              child: Center(
                child: Column(children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: logo,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: nip,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: password,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: loginButton,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Lupa Password? Klik Disini',
                        style: GoogleFonts.readexPro(
                            fontSize: 12,
                            color: Color.fromARGB(115, 39, 39, 39)),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
