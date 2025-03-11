import 'markdown_editor_plus_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class MarkdownEditorPlusLocalizationsDe extends MarkdownEditorPlusLocalizations {
  MarkdownEditorPlusLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get toolbar_view_item => 'Markdown Preview anzeigen/verstecken';

  @override
  String get toolbar_clear_action => 'Text Feld löschen';

  @override
  String get toolbar_reset_action => 'Text Feld auf Formatierung zurücksetzen';

  @override
  String get toolbar_selection_action => 'Zeile selektieren';

  @override
  String get toolbar_bold_action => 'Text Fett';

  @override
  String get toolbar_italic_action => 'Text Italic';

  @override
  String get toolbar_strikethrough_action => 'Durchstreichen';

  @override
  String get toolbar_heading_action => 'Überschrift einfügen';

  @override
  String get h1 => 'Überschrift 1 einfügen';

  @override
  String get h2 => 'Überschrift 2 einfügen';

  @override
  String get h3 => 'Überschrift 3 einfügen';

  @override
  String get h4 => 'Überschrift 4 einfügen';

  @override
  String get toolbar_order_list_action => 'Sortierte Liste';

  @override
  String get toolbar_unorder_list_action => 'Ungeordnete Liste';

  @override
  String get toolbar_checkbox_list_action => 'Liste mit Kontrollkästchen';

  @override
  String get checkbox => 'Aktiviertes Kontrollkästchen';

  @override
  String get uncheckbox => 'Leeres Kontrollkästchen';

  @override
  String get toolbar_emoji_action => 'Emoji einfügen';

  @override
  String get toolbar_link_action => 'Link einfügen';

  @override
  String get toolbar_link_action_template => '[Linkbeschreibung](';

  @override
  String get toolbar_image_action => 'Bild einfügen';

  @override
  String get toolbar_image_action_template => '![Bildbeschreibung](';

  @override
  String get toolbar_blockquote_action => 'Blockzitat';

  @override
  String get toolbar_code_action => 'Code-Block einfügen';

  @override
  String get toolbar_line_action => 'Trennlinie einfügen';

  @override
  String get provide_url => 'Bitte geben Sie die URL an.';

  @override
  String get input_your_url => 'URL eingeben.';

  @override
  String get input_your_url_helper => 'Beispiel: https://example.com';
}
