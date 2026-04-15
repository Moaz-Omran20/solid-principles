import 'package:solid_principles/Section%203%20_%20OCP/3.3/good_practice/types/mark_down_document_processor.dart';
import 'package:solid_principles/Section%203%20_%20OCP/3.3/good_practice/types/word_document_processor.dart';

import 'document_processor.dart';
import 'types/pdf_document_processor.dart';

void main()
{

  final PdfDocumentProcessor  pdfProcessor = PdfDocumentProcessor();
  pdfProcessor.enableCompression();
  pdfProcessor.process('doc.pdf', 'Hello PDF');

  print("---------------------------------------------");

  final DocumentProcessor wordProcessor = WordDocumentProcessor();
  final DocumentProcessor mdProcessor = MarkDownDocumentProcessor();

  pdfProcessor.process('doc.pdf', 'Hello PDF');
  wordProcessor.process('doc.docx', 'Hello Word');
  mdProcessor.process('doc.md', 'Hello Markdown');



}