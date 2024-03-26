import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  //const SecondPage({Key? key}) : super(key: key);
final String? data;

  const SecondPage({Key? key, this.data}) : super(key: key);

 @override
Widget build(BuildContext context) {
  final data2 = ModalRoute.of(context)!.settings.arguments;

  return Scaffold(
    appBar: AppBar(
      title: const Text('Second Page'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            data ?? '',
            style: const TextStyle(fontSize: 20.0),
          ),
          Text(
            data2.toString() ?? '',
            style: const TextStyle(fontSize: 20.0),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Kembali'),
          ),
        ],
      ),
    ),
  );
}
}

