import 'package:flutter/material.dart';
import 'package:markdown_editor_plus/src/toolbar.dart';

import '../l10n/generated/markdown_editor_plus_localizations.dart';

class ModalInputUrl extends StatelessWidget {
  const ModalInputUrl({
    super.key,
    required this.toolbar,
    required this.leftText,
    required this.selection,
    this.onActionCompleted,
  });

  final Toolbar toolbar;
  final String leftText;
  final TextSelection selection;
  final VoidCallback? onActionCompleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      padding: const EdgeInsets.all(30),
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              MarkdownEditorPlusLocalizations.of(context).provide_url,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextField(
            autocorrect: false,
            autofocus: true,
            cursorRadius: const Radius.circular(16),
            decoration: InputDecoration(
              hintText: MarkdownEditorPlusLocalizations.of(context).input_your_url,
              helperText: MarkdownEditorPlusLocalizations.of(context).input_your_url_helper,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
            ),
            style: const TextStyle(fontSize: 16),
            enableInteractiveSelection: true,
            onSubmitted: (String value) {
              Navigator.pop(context);

              /// check if the user entered an empty input
              if (value.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      MarkdownEditorPlusLocalizations.of(context).input_your_url,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.red.withAlpha(204),
                    duration: const Duration(milliseconds: 700),
                  ),
                );
              } else {
                if (!value.contains(RegExp(r'https?:\/\/(www.)?([^\s]+)'))) {
                  value = "https://$value";
                }
                toolbar.action(
                  "$leftText$value)",
                  "",
                  textSelection: selection,
                );
              }

              onActionCompleted?.call();
            },
          ),
        ],
      ),
    );
  }
}
