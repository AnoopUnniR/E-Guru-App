import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/presentation/admin_pages/pages/constants/admin_appbar.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewPage extends StatelessWidget {
  const PdfViewPage({super.key, required this.pdf});
  final String pdf;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: adminAppbar(title: "Resume"),
      body: SizedBox(
        child: SfPdfViewer.network(
          imageUrlConvert(pdf),
        ),
      ),
    );
  }
}
