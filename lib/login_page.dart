import 'package:flutter/material.dart';
import 'package:kuis/home_page.dart';

// Perintah untuk menjalankan aplikasi dengan MaterialApp
void main() {
  runApp(MyApp());
}

// Kelas utama aplikasi yang membungkus LoginPage dengan MaterialApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: LoginPage(),
    );
  }
}

// Kelas atau halaman pertama yang akan dijalankan
class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool loginSuccess = true;
  bool show = true;

  // Function redirect
  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage(
                  username: username,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            _title(),
            _logo(),
            _username(),
            _password(),
            _loginButton(context),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Text(
        "LOGIN",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _logo() {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Image.asset("images/menu.png"));
  }

  Widget _username() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: const InputDecoration(
            hintText: "Username",
            prefixIcon: Icon(Icons.people_alt_rounded),
            contentPadding: EdgeInsets.all(8),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(color: Colors.green))),
      ),
    );
  }

  Widget _password() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
          onChanged: (value) {
            password = value;
          },
          obscureText: show,
          decoration: InputDecoration(
              suffix: IconButton(
                  onPressed: () {
                    setState(() {
                      show = !show;
                    });
                  },
                  icon: Icon(show ? Icons.visibility : Icons.visibility_off)),
              hintText: 'Password',
              prefixIcon: Icon(Icons.lock),
              contentPadding: EdgeInsets.all(8),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.blue)))),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {
            String text = "";

            if (username == "Azkal" && password == '124220085') {
              _navigateToHome();
              setState(() {
                text = "Login Berhasil";
                loginSuccess = true;
              });
            } else {
              setState(() {
                text = "Login Gagal";
                loginSuccess = false;
              });
            }
            SnackBar snackBar = SnackBar(content: Text(text));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text("Login"),
        ));
  }
}
