import 'package:flutter/material.dart';
import 'package:praktikum_05/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(
                      data: 'Data dari Home Page',
                    ),
                  ),
                );
              },
              child: const Text('Menuju halaman kedua'),
            ),

	     // Tombol Kedua
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second_page');
              },
              child: const Text('Menuju halaman kedua dengan route'),
            ),
          ],
        ),
      ),
    );
  }
}
