import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';
void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => DataModel(),
        child: MaterialApp(
          home: Home(),
        ),
      ),
    );

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String email = '';
  String password = '';
  String confirm = '';
  bool passwordHidden = true;
  bool confirmPasswordHidden = true;
  bool confirmPasswordHidden2 = true;
  bool _isFocused = false;
  bool _isFocused2 = true;

  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  TextEditingController textEditingController3 = TextEditingController();

  // Method to handle login button click
  void login() {
    // Get the values from textEditingController
    String email = textEditingController1.text;
    String password = textEditingController2.text;
    String confirm = textEditingController3.text;

    // Check if email and password are not empty
      if (email.isNotEmpty && password.isNotEmpty) {
      // Check if the password matches the confirmation
      if (password == confirm) {
        // Perform your authentication logic here
        // For example, you can update the data in the DataModel
        Provider.of<DataModel>(context, listen: false).updateData(email);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      } else {
        // Passwords do not match
        print('Password and confirmation do not match');
      }
    } else {
      // Email or password is empty
      print('Email and password cannot be empty');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DSU Portal'),
        backgroundColor: Color.fromARGB(255, 138, 0, 46),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(30.0, 0, 30.0, 20.0),
          child: Column(
            children: [
              Container(
                height: 200,
                child: Image(
                  image: AssetImage('assets/dsu1.png'),
                ),
              ),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome To',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5.0,),
                  Text(
                    'DSU Portal',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 177, 0, 59),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.0),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: "Enter your Name",
                  prefixIcon: Icon(
                    Icons.text_fields,
                    color: Color.fromARGB(255, 138, 0, 46),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 138, 0, 46),
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 185, 0, 62),
                      width: 3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: TextField(
                  controller: textEditingController1,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    hintText: "Enter your e-mail",
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 138, 0, 46),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 138, 0, 46),
                        width: 3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 185, 0, 62),
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              TextField(
                controller: textEditingController2,
                obscureText: confirmPasswordHidden2,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: "Enter your Password",
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color.fromARGB(255, 138, 0, 46),
                  ),
                  suffixIcon: InkWell(
                    child: Icon(
                      Icons.remove_red_eye,
                      color: _isFocused2
                          ? Color.fromARGB(255, 97, 0, 26)
                          : Colors.grey,
                    ),
                    onTap: () {
                      setState(() {
                        confirmPasswordHidden2 = !confirmPasswordHidden2;
                        _isFocused2 = !_isFocused2;
                      });
                    },
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 138, 0, 46),
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 185, 0, 62),
                      width: 3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: TextField(
                  controller: textEditingController3,
                  obscureText: confirmPasswordHidden,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    hintText: "Confirm your Password",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 138, 0, 46),
                    ),
                    suffixIcon: InkWell(
                      child: Icon(
                        Icons.remove_red_eye,
                        color: _isFocused ? Colors.grey : Color.fromARGB(255, 97, 0, 26),
                      ),
                      onTap: () {
                        setState(() {
                          confirmPasswordHidden = !confirmPasswordHidden;
                          _isFocused = !_isFocused;
                        });
                      },
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 138, 0, 46),
                        width: 3,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 185, 0, 62),
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: ElevatedButton(
                    onPressed: () => login(),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 138, 0, 46),
                      onPrimary: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      minimumSize: Size.fromHeight(50),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DataModel extends ChangeNotifier {
  String data = "Hello from Provider";

  void updateData(String newData) {
    data = newData;
    notifyListeners();
  }
}
