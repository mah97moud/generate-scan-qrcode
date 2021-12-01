import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateScreen extends StatefulWidget {
  const GenerateScreen({Key? key}) : super(key: key);

  @override
  _GenerateScreenState createState() => _GenerateScreenState();
}

String? dummyData;

TextEditingController qrTextController = TextEditingController();

class _GenerateScreenState extends State<GenerateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate QR code'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.edit),
                trailing: TextButton(
                  onPressed: () {
                    setState(() {
                      dummyData = (qrTextController.text == ''
                          ? null
                          : qrTextController.text)!;
                    });
                  },
                  child: const Text(
                    'Enter',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                title: TextFormField(
                  controller: qrTextController,
                  decoration: const InputDecoration(
                    hintText: 'please enter some data',
                  ),
                ),
              ),
            ),
          ),
          dummyData == null
              ? const Center(
                  child: Text("enter some text to display qr code..."))
              : QrImage(
                  embeddedImage: const NetworkImage(
                    "https://avatars1.githubusercontent.com/u/41328571?s=280&v=4",
                  ),
                  data: dummyData.toString(),
                  gapless: true,
                ),
        ],
      ),
    );
  }
}
