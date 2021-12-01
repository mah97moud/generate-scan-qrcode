import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qrcode_scan_demo/views/qr_screen.dart';

void main() {
  runApp(
    const QRCodeApp(),
  );
}

class QRCodeApp extends StatelessWidget {
  const QRCodeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QRCode Demo',
      home: QRScreen(),
    );
  }
}
