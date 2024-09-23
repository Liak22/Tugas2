import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _username = "";

  String _password = "";
  bool isCliked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text("Halaman Login")),
          body: Column(
            children: [
              _usernameField(),
              _paswordField(),
              _LoginButton(context),
            ],
          )),
    );
  }

  Widget _usernameField() {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
          enabled: true,
          onChanged: (value) {
            _username = value;
          },
          decoration: InputDecoration(
              hintText: 'Masukan Username',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(width: 3, color: Colors.grey))),
        ),
      ),
    );
  }

  Widget _paswordField() {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextFormField(
          enabled: true,
          onChanged: (value) {
            _password = value;
          },
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Masukan Password',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(width: 3, color: Colors.grey))),
        ),
      ),
    );
  }

  Widget _LoginButton(BuildContext Context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: isCliked == true
                  ? WidgetStatePropertyAll(Colors.blueAccent)
                  : WidgetStatePropertyAll(
                      const Color.fromARGB(255, 223, 125, 157))),
          onPressed: () {
            if (_username == 'flutter' && _password == 'mpbile') {
              ScaffoldMessenger.of(Context).showSnackBar(SnackBar(
                content: Text('Login Berhasil'),
              ));
            }
            setState(() {
              isCliked = !isCliked;
              print(isCliked);
            });
          },
          child: const Text('Login')),
    );
  }
}
