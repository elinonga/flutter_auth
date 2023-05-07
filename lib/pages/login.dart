import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),

            // Clinic Image
            const Image(
              image: AssetImage("assets/images/clinic_logo.png"),
              height: 100,
            ),
            const SizedBox(height: 35),

            // Login - Text
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Email TextField
            _buildTextField("Email"),
            const SizedBox(height: 20),

            // Password TextField
            _buildPasswordField("Password"),
            const SizedBox(height: 10),

            // Forgot Password
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Forgot Password?"),
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Login Button
            ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 120,
                  vertical: 10,
                ),
                textStyle: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            const Text("OR"),
            const SizedBox(height: 20),

            // Login with Google - Button
            _buildGoogleSignInButton(),
            const SizedBox(height: 20),

            // New to clinic? Register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("New to Clinic?"),
                TextButton(
                  onPressed: () {},
                  child: const Text("Register"),
                  style: TextButton.styleFrom(primary: Colors.blue),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        )),
      ],
    ));
  }

  Widget _buildTextField(String label) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildGoogleSignInButton() {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        side: const BorderSide(color: Colors.grey),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Image(image: AssetImage("assets/images/google_logo.png"), height: 30),
          SizedBox(width: 10),
          Text("Login with Google"),
        ],
      ),
    );
  }

  Widget _buildPasswordField(String label) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: _isObscure,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: _isObscure
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
        ),
      ),
    );
  }
}
