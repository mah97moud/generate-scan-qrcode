import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:qrcode_scan_demo/views/generate.dart';
import 'package:qrcode_scan_demo/views/scan.dart';

class QRScreen extends StatelessWidget {
  const QRScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR and Bar Code Reader & Generator demo'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: const Text('Scan Code'),
              leading: const Icon(MaterialCommunityIcons.qrcode_scan),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ScanScreen(),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Generate QR Code'),
              leading: const Icon(MaterialCommunityIcons.qrcode_edit),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const GenerateScreen(),
                  ),
                );
              },
            ),
          ),
          // Card(
          //   child: ListTile(
          //     title: const Text('Pick Image'),
          //     leading: const Icon(MaterialCommunityIcons.image_album),
          //     onTap: () {
          //       Navigator.of(context).push(
          //         MaterialPageRoute(
          //           builder: (context) => const ImagePickImage(),
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
