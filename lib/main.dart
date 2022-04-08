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
      home:  const HelloPage("hello, new york"),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Text(widget.title, style: const TextStyle(fontSize: 100))
    );
  }
}
