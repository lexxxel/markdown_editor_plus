import 'markdown_editor_plus_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class MarkdownEditorPlusLocalizationsEn extends MarkdownEditorPlusLocalizations {
  MarkdownEditorPlusLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get toolbar_view_item => 'Show/Hide markdown preview';

  @override
  String get toolbar_clear_action => 'Clear the text field';

  @override
  String get toolbar_reset_action => 'Reset the text field to specified format';

  @override
  String get toolbar_selection_action => 'Select single line';

  @override
  String get toolbar_bold_action => 'Make text bold';

  @override
  String get toolbar_italic_action => 'Make text italic';

  @override
  String get toolbar_strikethrough_action => 'Strikethrough';

  @override
  String get toolbar_heading_action => 'Insert Heading';

  @override
  String get h1 => 'Insert Heading 1';

  @override
  String get h2 => 'Insert Heading 2';

  @override
  String get h3 => 'Insert Heading 3';

  @override
  String get h4 => 'Insert Heading 4';

  @override
  String get toolbar_order_list_action => 'Ordered list';

  @override
  String get toolbar_unorder_list_action => 'Unordered list';

  @override
  String get toolbar_checkbox_list_action => 'checkbox list';

  @override
  String get checkbox => 'Checked checkbox';

  @override
  String get uncheckbox => 'Unchecked checkbox';

  @override
  String get toolbar_emoji_action => 'Select emoji';

  @override
  String get toolbar_link_action => 'Add hyperlink';

  @override
  String get toolbar_link_action_template => '[enter link description here](';

  @override
  String get toolbar_image_action => 'Add image';

  @override
  String get toolbar_image_action_template => '![enter image description here](';

  @override
  String get toolbar_blockquote_action => 'Blockquote';

  @override
  String get toolbar_code_action => 'Code syntax/font';

  @override
  String get toolbar_line_action => 'Add line';

  @override
  String get provide_url => 'Please provide a URL here.';

  @override
  String get input_your_url => 'Input your url.';

  @override
  String get input_your_url_helper => 'example: https://example.com';
}
