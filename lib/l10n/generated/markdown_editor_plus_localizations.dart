import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'markdown_editor_plus_localizations_de.dart';
import 'markdown_editor_plus_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of MarkdownEditorPlusLocalizations
/// returned by `MarkdownEditorPlusLocalizations.of(context)`.
///
/// Applications need to include `MarkdownEditorPlusLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/markdown_editor_plus_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: MarkdownEditorPlusLocalizations.localizationsDelegates,
///   supportedLocales: MarkdownEditorPlusLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the MarkdownEditorPlusLocalizations.supportedLocales
/// property.
abstract class MarkdownEditorPlusLocalizations {
  MarkdownEditorPlusLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static MarkdownEditorPlusLocalizations of(BuildContext context) {
    return Localizations.of<MarkdownEditorPlusLocalizations>(context, MarkdownEditorPlusLocalizations)!;
  }

  static const LocalizationsDelegate<MarkdownEditorPlusLocalizations> delegate = _MarkdownEditorPlusLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en')
  ];

  /// No description provided for @toolbar_view_item.
  ///
  /// In en, this message translates to:
  /// **'Show/Hide markdown preview'**
  String get toolbar_view_item;

  /// No description provided for @toolbar_clear_action.
  ///
  /// In en, this message translates to:
  /// **'Clear the text field'**
  String get toolbar_clear_action;

  /// No description provided for @toolbar_reset_action.
  ///
  /// In en, this message translates to:
  /// **'Reset the text field to specified format'**
  String get toolbar_reset_action;

  /// No description provided for @toolbar_selection_action.
  ///
  /// In en, this message translates to:
  /// **'Select single line'**
  String get toolbar_selection_action;

  /// No description provided for @toolbar_bold_action.
  ///
  /// In en, this message translates to:
  /// **'Make text bold'**
  String get toolbar_bold_action;

  /// No description provided for @toolbar_italic_action.
  ///
  /// In en, this message translates to:
  /// **'Make text italic'**
  String get toolbar_italic_action;

  /// No description provided for @toolbar_strikethrough_action.
  ///
  /// In en, this message translates to:
  /// **'Strikethrough'**
  String get toolbar_strikethrough_action;

  /// No description provided for @toolbar_heading_action.
  ///
  /// In en, this message translates to:
  /// **'Insert Heading'**
  String get toolbar_heading_action;

  /// No description provided for @h1.
  ///
  /// In en, this message translates to:
  /// **'Insert Heading 1'**
  String get h1;

  /// No description provided for @h2.
  ///
  /// In en, this message translates to:
  /// **'Insert Heading 2'**
  String get h2;

  /// No description provided for @h3.
  ///
  /// In en, this message translates to:
  /// **'Insert Heading 3'**
  String get h3;

  /// No description provided for @h4.
  ///
  /// In en, this message translates to:
  /// **'Insert Heading 4'**
  String get h4;

  /// No description provided for @toolbar_order_list_action.
  ///
  /// In en, this message translates to:
  /// **'Ordered list'**
  String get toolbar_order_list_action;

  /// No description provided for @toolbar_unorder_list_action.
  ///
  /// In en, this message translates to:
  /// **'Unordered list'**
  String get toolbar_unorder_list_action;

  /// No description provided for @toolbar_checkbox_list_action.
  ///
  /// In en, this message translates to:
  /// **'checkbox list'**
  String get toolbar_checkbox_list_action;

  /// No description provided for @checkbox.
  ///
  /// In en, this message translates to:
  /// **'Checked checkbox'**
  String get checkbox;

  /// No description provided for @uncheckbox.
  ///
  /// In en, this message translates to:
  /// **'Unchecked checkbox'**
  String get uncheckbox;

  /// No description provided for @toolbar_emoji_action.
  ///
  /// In en, this message translates to:
  /// **'Select emoji'**
  String get toolbar_emoji_action;

  /// No description provided for @toolbar_link_action.
  ///
  /// In en, this message translates to:
  /// **'Add hyperlink'**
  String get toolbar_link_action;

  /// No description provided for @toolbar_link_action_template.
  ///
  /// In en, this message translates to:
  /// **'[enter link description here]('**
  String get toolbar_link_action_template;

  /// No description provided for @toolbar_image_action.
  ///
  /// In en, this message translates to:
  /// **'Add image'**
  String get toolbar_image_action;

  /// No description provided for @toolbar_image_action_template.
  ///
  /// In en, this message translates to:
  /// **'![enter image description here]('**
  String get toolbar_image_action_template;

  /// No description provided for @toolbar_blockquote_action.
  ///
  /// In en, this message translates to:
  /// **'Blockquote'**
  String get toolbar_blockquote_action;

  /// No description provided for @toolbar_code_action.
  ///
  /// In en, this message translates to:
  /// **'Code syntax/font'**
  String get toolbar_code_action;

  /// No description provided for @toolbar_line_action.
  ///
  /// In en, this message translates to:
  /// **'Add line'**
  String get toolbar_line_action;

  /// No description provided for @provide_url.
  ///
  /// In en, this message translates to:
  /// **'Please provide a URL here.'**
  String get provide_url;

  /// No description provided for @input_your_url.
  ///
  /// In en, this message translates to:
  /// **'Input your url.'**
  String get input_your_url;

  /// No description provided for @input_your_url_helper.
  ///
  /// In en, this message translates to:
  /// **'example: https://example.com'**
  String get input_your_url_helper;
}

class _MarkdownEditorPlusLocalizationsDelegate extends LocalizationsDelegate<MarkdownEditorPlusLocalizations> {
  const _MarkdownEditorPlusLocalizationsDelegate();

  @override
  Future<MarkdownEditorPlusLocalizations> load(Locale locale) {
    return SynchronousFuture<MarkdownEditorPlusLocalizations>(lookupMarkdownEditorPlusLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_MarkdownEditorPlusLocalizationsDelegate old) => false;
}

MarkdownEditorPlusLocalizations lookupMarkdownEditorPlusLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de': return MarkdownEditorPlusLocalizationsDe();
    case 'en': return MarkdownEditorPlusLocalizationsEn();
  }

  throw FlutterError(
    'MarkdownEditorPlusLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
