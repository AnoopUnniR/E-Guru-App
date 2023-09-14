import 'package:eguru_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewPage extends StatelessWidget {
  const PdfViewPage({super.key, required this.pdf});
  final String pdf;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        child: SfPdfViewer.network(
          imageUrlConvert(pdf),
        ),
      ),
    );
  }
}
