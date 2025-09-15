import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of(context, S);
  }

  // App Name
  String get appName => 'بريمو';
  String get appNameEn => 'Primo';

  // Common
  String get ok => 'موافق';
  String get cancel => 'إلغاء';
  String get save => 'حفظ';
  String get delete => 'حذف';
  String get edit => 'تعديل';
  String get search => 'بحث';
  String get loading => 'جاري التحميل...';
  String get error => 'خطأ';
  String get success => 'نجح';
  String get retry => 'إعادة المحاولة';

  // Navigation
  String get home => 'الرئيسية';
  String get services => 'الخدمات';
  String get shops => 'المتاجر';
  String get orders => 'الطلبات';
  String get profile => 'الملف الشخصي';

  // Authentication
  String get login => 'تسجيل الدخول';
  String get register => 'إنشاء حساب';
  String get logout => 'تسجيل الخروج';
  String get email => 'البريد الإلكتروني';
  String get password => 'كلمة المرور';
  String get confirmPassword => 'تأكيد كلمة المرور';
  String get forgotPassword => 'نسيت كلمة المرور؟';

  // Services
  String get electrical => 'كهرباء';
  String get plumbing => 'سباكة';
  String get construction => 'حدادة';
  String get carpentry => 'نجارة';
  String get painting => 'دهان';

  // Order Status
  String get pending => 'في الانتظار';
  String get confirmed => 'مؤكد';
  String get inProgress => 'قيد التنفيذ';
  String get completed => 'مكتمل';
  String get cancelled => 'ملغي';
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

// Placeholder for intl initialization
Future<bool> initializeMessages(String localeName) async {
  return true;
}

