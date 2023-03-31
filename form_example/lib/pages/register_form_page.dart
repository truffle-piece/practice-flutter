import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterFormPage extends StatefulWidget {
  const RegisterFormPage({Key? key}) : super(key: key);

  @override
  State<RegisterFormPage> createState() => _RegisterFormPageState();
}

class _RegisterFormPageState extends State<RegisterFormPage> {
  bool _hidePass = true, _hidePassRepeat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register form'),
        centerTitle: true,
      ),
      body: Form(
          child: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Ввод имя
          TextField(
              decoration: InputDecoration(
            labelText: 'Имя *',
            prefixIcon: Icon(Icons.person),
            suffixIcon: Icon(
              Icons.delete_outline,
              color: Colors.red,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(color: Colors.grey, width: 2)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.blue, width: 2)),
          )),
          SizedBox(
            height: 5,
          ),

          // Ввод телефон
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Телефон *',
              hintText: 'Мы свяжемся с вами',
              helperText: 'Формат номера: +7(###)###-####',
              prefixIcon: Icon(Icons.call),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  borderSide: BorderSide(color: Colors.grey, width: 2)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.blue, width: 2)),
            ),
            keyboardType: TextInputType.phone,
          ),
          SizedBox(
            height: 5,
          ),

          // Ввод email
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.mail),
                border: OutlineInputBorder()),
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 5,
          ),

          // Ввод биография
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Биография', border: OutlineInputBorder()),
            maxLines: 3,
          ),
          SizedBox(
            height: 10,
          ),

          // Ввод пароль
          TextFormField(
            obscureText: _hidePass,
            decoration: InputDecoration(
                labelText: 'Пароль *',
                prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(
                  icon:
                      Icon(_hidePass ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _hidePass = !_hidePass;
                    });
                  },
                ),
                border: OutlineInputBorder()),
            maxLength: 8,
          ),
          SizedBox(
            height: 5,
          ),

          // Ввод повтор пароль
          TextFormField(
            obscureText: _hidePassRepeat,
            decoration: InputDecoration(
                labelText: 'Пароль *',
                hintText: 'Повторите пароль',
                prefixIcon: Icon(Icons.password),
                suffixIcon: IconButton(
                  icon: Icon(_hidePassRepeat
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _hidePassRepeat = !_hidePassRepeat;
                    });
                  },
                ),
                border: OutlineInputBorder()),
            maxLength: 8,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(primary: Colors.blue),
            child: Text(
              'Регистрация',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      )),
    );
  }
}
