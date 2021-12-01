import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  String qrCodeResult = '';
  bool backCamera = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Scan using:' + (backCamera ? 'Front Cam' : 'Back Cam'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                backCamera = !backCamera;
                camera = backCamera ? 1 : -1;
              });
            },
            icon: Icon(
              backCamera ? Ionicons.ios_camera_reverse : Icons.camera,
            ),
          ),
          IconButton(
            onPressed: () async {
              ScanResult codeScanner = await BarcodeScanner.scan(
                options: ScanOptions(
                  useCamera: camera,
                ),
              );
              setState(() {
                qrCodeResult = codeScanner.rawContent;
              });
            },
            icon: const Icon(
              MaterialCommunityIcons.qrcode_scan,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          qrCodeResult == ''
              ? 'Please Scan to show some result'
              : 'Result: $qrCodeResult',
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}

int camera = 1;
