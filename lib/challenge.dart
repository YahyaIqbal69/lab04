import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ComplexUI()));

class ComplexUI extends StatefulWidget {
  @override
  _ComplexUIState createState() => _ComplexUIState();
}

class _ComplexUIState extends State<ComplexUI> {
  final TextEditingController _controller = TextEditingController();
  String _displayText = "";

  void _updateText() => setState(() => _displayText = _controller.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("COMPLEX UI")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _WelcomeBox(),
            SizedBox(height: 20),
            _ButtonRow(),
            SizedBox(height: 20),
            TextField(controller: _controller, decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Enter Text")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: _updateText, child: Text("Submit")),
            SizedBox(height: 20),
            Text(_displayText, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

class _WelcomeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(10)),
      child: Text("Welcome to Flutter!", style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center),
    );
  }
}

class _ButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [ElevatedButton(onPressed: () {}, child: Text("Sign Up")), ElevatedButton(onPressed: () {}, child: Text("Login"))],
    );
  }
}
