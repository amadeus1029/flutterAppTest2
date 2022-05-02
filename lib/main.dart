import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateless 상태가 없으므로 화면이 변경될 소지가 없음
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const HelloPage("hello, Unless!"),
    );
  }
}

//이쪽은 건드릴 필요가 없고 항상 구조가 이러함 상태를 가질 수 없음
class HelloPage extends StatefulWidget {
  final String title;

  const HelloPage(this.title, {Key? key}) : super(key: key);

  @override
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String _message = "Hello Unless?";
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: _changeMessage),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_message, style: const TextStyle(fontSize: 40)),
                Text('$_counter', style: const TextStyle(fontSize: 40))
              ],
            )
        )
    );
  }
  void _changeMessage() {
    setState(() {
      _message = "안녕 언레스!";
      _counter++;
    });
  }
}
