import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../l10n/generated/markdown_editor_plus_localizations.dart';
import '../src/toolbar.dart';
import 'modal_select_emoji.dart';
import 'modal_input_url.dart';
import 'toolbar_item.dart';

class MarkdownToolbar extends StatelessWidget {
  /// Preview/Eye button
  final VoidCallback? onPreviewChanged;
  final TextEditingController controller;
  final VoidCallback? unfocus;
  final bool emojiConvert;
  final bool autoCloseAfterSelectEmoji;
  final Toolbar toolbar;
  final Color? toolbarBackground;
  final Color? expandableBackground;
  final bool showPreviewButton;
  final bool showEmojiSelection;
  final VoidCallback? onActionCompleted;
  final String? markdownSyntax;
  final VoidCallback? onClearAction;

  const MarkdownToolbar({
    super.key,
    this.onPreviewChanged,
    this.markdownSyntax,
    required this.controller,
    this.emojiConvert = true,
    this.unfocus,
    required this.toolbar,
    this.autoCloseAfterSelectEmoji = true,
    this.toolbarBackground,
    this.expandableBackground,
    this.onActionCompleted,
    this.showPreviewButton = true,
    this.showEmojiSelection = true,
    this.onClearAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: toolbarBackground ?? Colors.grey[200],
      width: double.maxFinite,
      height: 45,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            // preview
            if (showPreviewButton)
              ToolbarItem(
                key: const ValueKey<String>("toolbar_view_item"),
                icon: FontAwesomeIcons.eye,
                onPressedButton: onPreviewChanged,
                tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_view_item,
              ),

            // Clear the field
            ToolbarItem(
              key: const ValueKey<String>("toolbar_clear_action"),
              icon: FontAwesomeIcons.trashCan,
              onPressedButton: () {
                controller.clear();
                onActionCompleted?.call();
                onClearAction?.call();
              },
              tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_clear_action,
            ),

            // Reset the text field
            ToolbarItem(
              key: const ValueKey<String>("toolbar_reset_action"),
              icon: FontAwesomeIcons.arrowRotateLeft,
              onPressedButton: () {
                if (markdownSyntax != null) {
                  controller.text = markdownSyntax!;
                  onActionCompleted?.call();
                }
              },
              tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_reset_action,
            ),

            // select single line
            ToolbarItem(
              key: const ValueKey<String>("toolbar_selection_action"),
              icon: FontAwesomeIcons.textWidth,
              onPressedButton: () {
                toolbar.selectSingleLine.call();
                onActionCompleted?.call();
              },
              tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_selection_action,
            ),
            // bold
            ToolbarItem(
              key: const ValueKey<String>("toolbar_bold_action"),
              icon: FontAwesomeIcons.bold,
              tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_bold_action,
              onPressedButton: () {
                toolbar.action("**", "**");
                onActionCompleted?.call();
              },
            ),
            // italic
            ToolbarItem(
              key: const ValueKey<String>("toolbar_italic_action"),
              icon: FontAwesomeIcons.italic,
              tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_italic_action,
              onPressedButton: () {
                toolbar.action("_", "_");
                onActionCompleted?.call();
              },
            ),
            // strikethrough
            ToolbarItem(
              key: const ValueKey<String>("toolbar_strikethrough_action"),
              icon: FontAwesomeIcons.strikethrough,
              tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_strikethrough_action,
              onPressedButton: () {
                toolbar.action("~~", "~~");
                onActionCompleted?.call();
              },
            ),
            // heading
            ToolbarItem(
              key: const ValueKey<String>("toolbar_heading_action"),
              icon: FontAwesomeIcons.heading,
              isExpandable: true,
              tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_heading_action,
              expandableBackground: expandableBackground,
              items: [
                ToolbarItem(
                  key: const ValueKey<String>("h1"),
                  icon: "H1",
                  tooltip: MarkdownEditorPlusLocalizations.of(context).h1,
                  onPressedButton: () {
                    toolbar.action("# ", "");
                    onActionCompleted?.call();
                  },
                ),
                ToolbarItem(
                  key: const ValueKey<String>("h2"),
                  icon: "H2",
                  tooltip: MarkdownEditorPlusLocalizations.of(context).h2,
                  onPressedButton: () {
                    toolbar.action("## ", "");
                    onActionCompleted?.call();
                  },
                ),
                ToolbarItem(
                  key: const ValueKey<String>("h3"),
                  icon: "H3",
                  tooltip: MarkdownEditorPlusLocalizations.of(context).h3,
                  onPressedButton: () {
                    toolbar.action("### ", "");
                    onActionCompleted?.call();
                  },
                ),
                ToolbarItem(
                  key: const ValueKey<String>("h4"),
                  icon: "H4",
                  tooltip: MarkdownEditorPlusLocalizations.of(context).h4,
                  onPressedButton: () {
                    toolbar.action("#### ", "");
                    onActionCompleted?.call();
                  },
                ),
                // Heading 5 onwards has same font
              ],
            ),
            // order list
            ToolbarItem(
              key: const ValueKey<String>("toolbar_order_list_action"),
              icon: FontAwesomeIcons.listOl,
              tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_order_list_action,
              onPressedButton: () {
                toolbar.action("1. ", "");
                onActionCompleted?.call();
              },
            ),
            // unorder list
            ToolbarItem(
              key: const ValueKey<String>("toolbar_unorder_list_action"),
              icon: FontAwesomeIcons.listUl,
              tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_unorder_list_action,
              onPressedButton: () {
                toolbar.action("* ", "");
                onActionCompleted?.call();
              },
            ),
            // checkbox list
            ToolbarItem(
              key: const ValueKey<String>("toolbar_checkbox_list_action"),
              icon: FontAwesomeIcons.listCheck,
              isExpandable: true,
              expandableBackground: expandableBackground,
              tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_checkbox_list_action,
              items: [
                ToolbarItem(
                  key: const ValueKey<String>("checkbox"),
                  icon: FontAwesomeIcons.solidSquareCheck,
                  tooltip: MarkdownEditorPlusLocalizations.of(context).checkbox,
                  onPressedButton: () {
                    toolbar.action("- [x] ", "");
                    onActionCompleted?.call();
                  },
                ),
                ToolbarItem(
                  key: const ValueKey<String>("uncheckbox"),
                  icon: FontAwesomeIcons.square,
                  tooltip: MarkdownEditorPlusLocalizations.of(context).uncheckbox,
                  onPressedButton: () {
                    toolbar.action("- [ ] ", "");
                    onActionCompleted?.call();
                  },
                )
              ],
            ),
            // emoji
            if (showEmojiSelection)
              ToolbarItem(
                key: const ValueKey<String>("toolbar_emoji_action"),
                icon: FontAwesomeIcons.faceSmile,
                tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_emoji_action,
                onPressedButton: () async {
                  await _showModalSelectEmoji(context, controller.selection);
                },
              ),
            // link
            ToolbarItem(
              key: const ValueKey<String>("toolbar_link_action"),
              icon: FontAwesomeIcons.link,
              tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_link_action,
              onPressedButton: () async {
                if (toolbar.hasSelection) {
                  toolbar.action(MarkdownEditorPlusLocalizations.of(context).toolbar_link_action_template, ")");
                } else {
                  await _showModalInputUrl(context, MarkdownEditorPlusLocalizations.of(context).toolbar_link_action_template, controller.selection);
                }

                onActionCompleted?.call();
              },
            ),
            // image
            ToolbarItem(
              key: const ValueKey<String>("toolbar_image_action"),
              icon: FontAwesomeIcons.image,
              tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_image_action,
              onPressedButton: () async {
                if (toolbar.hasSelection) {
                  toolbar.action(MarkdownEditorPlusLocalizations.of(context).toolbar_image_action_template, ")");
                } else {
                  await _showModalInputUrl(
                    context,
                    MarkdownEditorPlusLocalizations.of(context).toolbar_image_action_template,
                    controller.selection,
                  );
                }

                onActionCompleted?.call();
              },
            ),
            // blockquote
            ToolbarItem(
              key: const ValueKey<String>("toolbar_blockquote_action"),
              icon: FontAwesomeIcons.quoteLeft,
              tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_blockquote_action,
              onPressedButton: () {
                toolbar.action("> ", "");
                onActionCompleted?.call();
              },
            ),
            // code
            ToolbarItem(
              key: const ValueKey<String>("toolbar_code_action"),
              icon: FontAwesomeIcons.code,
              tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_code_action,
              onPressedButton: () {
                toolbar.action("`", "`");
                onActionCompleted?.call();
              },
            ),
            // line
            ToolbarItem(
              key: const ValueKey<String>("toolbar_line_action"),
              icon: FontAwesomeIcons.rulerHorizontal,
              tooltip: MarkdownEditorPlusLocalizations.of(context).toolbar_line_action,
              onPressedButton: () {
                toolbar.action("\n___\n", "");
                onActionCompleted?.call();
              },
            ),
          ],
        ),
      ),
    );
  }

  // Show modal to select emoji
  Future<dynamic> _showModalSelectEmoji(BuildContext context, TextSelection selection) {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) {
        return ModalSelectEmoji(
          emojiConvert: emojiConvert,
          onChanged: (String emot) {
            if (autoCloseAfterSelectEmoji) Navigator.pop(context);
            final newSelection = toolbar.getSelection(selection);

            toolbar.action(emot, "", textSelection: newSelection);
            // change selection baseoffset if not auto close emoji
            if (!autoCloseAfterSelectEmoji) {
              selection = TextSelection.collapsed(
                offset: newSelection.baseOffset + emot.length,
              );
              unfocus?.call();
            }
            onActionCompleted?.call();
          },
        );
      },
    );
  }

  // show modal input
  Future<dynamic> _showModalInputUrl(
    BuildContext context,
    String leftText,
    TextSelection selection,
  ) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return ModalInputUrl(
          toolbar: toolbar,
          leftText: leftText,
          selection: selection,
          onActionCompleted: onActionCompleted,
        );
      },
    );
  }
}
