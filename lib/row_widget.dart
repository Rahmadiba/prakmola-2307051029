import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Row'),
      ),
      body: Row(
        children: const [
             Text('D3 Manajemen'),
          Text('FMIPA'),
          Text('Universitas Lampung'),
          Text('2307051029'),
        ],
      ),
    );
  }
}