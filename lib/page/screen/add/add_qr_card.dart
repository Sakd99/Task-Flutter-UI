import 'package:flutter/material.dart';
import 'package:flutter_camera_qrcode_scanner/dynamsoft_barcode.dart';
import 'package:flutter_camera_qrcode_scanner/flutter_camera_qrcode_scanner.dart';



class AddQrCard extends StatefulWidget {
  const AddQrCard({Key? key}) : super(key: key);

  @override
  State<AddQrCard> createState() => _AddQrCardState();
}

class _AddQrCardState extends State<AddQrCard> {
  ScannerViewController? controller;
  String _barcodeResults = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('QR Code'),
        ),
        body: Stack(children: <Widget>[
          ScannerView(onScannerViewCreated: onScannerViewCreated),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 100,
                child: SingleChildScrollView(
                  child: Text(
                    _barcodeResults,
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: 100,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                          child: Text('Start Scan'),
                          textColor: Colors.white,
                          color: Colors.blue,
                          onPressed: () async {
                            controller!.startScanning();
                          }),
                      MaterialButton(
                          child: Text("Stop Scan"),
                          textColor: Colors.white,
                          color: Colors.blue,
                          onPressed: () async {
                            controller!.stopScanning();
                          })
                    ]),
              ),
            ],
          )
        ]),
    );
  }

  void onScannerViewCreated(ScannerViewController controller) async {
    setState(() {
      this.controller = controller;
    });
    await controller.setLicense(
        'DLS2eyJoYW5kc2hha2VDb2RlIjoiMjAwMDAxLTE2NDk4Mjk3OTI2MzUiLCJvcmdhbml6YXRpb25JRCI6IjIwMDAwMSIsInNlc3Npb25QYXNzd29yZCI6IndTcGR6Vm05WDJrcEQ5YUoifQ==');
    await controller.init();
    await controller.startScanning(); // auto start scanning
    controller.scannedDataStream.listen((results) {
      setState(() {
        _barcodeResults = getBarcodeResults(results);
      });
    });
  }

  String getBarcodeResults(List<BarcodeResult> results) {
    StringBuffer sb = new StringBuffer();
    for (BarcodeResult result in results) {
      sb.write(result.format);
      sb.write("\n");
      sb.write(result.text);
      sb.write("\n\n");
    }
    if (results.isEmpty) sb.write("No QR Code Detected");
    return sb.toString();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}