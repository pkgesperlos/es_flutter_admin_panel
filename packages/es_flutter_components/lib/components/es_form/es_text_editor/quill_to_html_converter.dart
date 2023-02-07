import 'dart:convert';

import 'package:delta_markdown/delta_markdown.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:markdown/markdown.dart';

String quillDeltaToHtml(Delta delta) {
  final convertedValue = jsonEncode(delta.toJson());
  final markdown = deltaToMarkdown(convertedValue);
  final html = markdownToHtml(markdown);

  return html;
}