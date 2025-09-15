import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFFF5C400); // Primo Yellow
  static const Color primaryDark = Color(0xFFE6B000);
  static const Color primaryLight = Color(0xFFF8D633);
  
  // Secondary Colors
  static const Color secondary = Color(0xFF1E3A8A); // Dark Blue
  static const Color secondaryDark = Color(0xFF1E40AF);
  static const Color secondaryLight = Color(0xFF3B82F6);
  
  // Accent Colors
  static const Color accent = Color(0xFF10B981); // Green
  static const Color accentDark = Color(0xFF059669);
  static const Color accentLight = Color(0xFF34D399);
  
  // Neutral Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey50 = Color(0xFFF9FAFB);
  static const Color grey100 = Color(0xFFF3F4F6);
  static const Color grey200 = Color(0xFFE5E7EB);
  static const Color grey300 = Color(0xFFD1D5DB);
  static const Color grey400 = Color(0xFF9CA3AF);
  static const Color grey500 = Color(0xFF6B7280);
  static const Color grey600 = Color(0xFF4B5563);
  static const Color grey700 = Color(0xFF374151);
  static const Color grey800 = Color(0xFF1F2937);
  static const Color grey900 = Color(0xFF111827);
  
  // Status Colors
  static const Color success = Color(0xFF10B981);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF3B82F6);
  
  // Background Colors
  static const Color background = Color(0xFFFFFFFF);
  static const Color backgroundDark = Color(0xFF0F172A);
  static const Color surface = Color(0xFFF8FAFC);
  static const Color surfaceDark = Color(0xFF1E293B);
  
  // Text Colors
  static const Color textPrimary = Color(0xFF1F2937);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textTertiary = Color(0xFF9CA3AF);
  static const Color textOnPrimary = Color(0xFF1F2937);
  static const Color textOnSecondary = Color(0xFFFFFFFF);
  static const Color textOnDark = Color(0xFFFFFFFF);
  
  // Border Colors
  static const Color border = Color(0xFFE5E7EB);
  static const Color borderDark = Color(0xFF374151);
  static const Color borderFocus = Color(0xFFF5C400);
  
  // Shadow Colors
  static const Color shadow = Color(0x1A000000);
  static const Color shadowDark = Color(0x40000000);
  
  // Service Category Colors
  static const Color electrical = Color(0xFFF59E0B);
  static const Color plumbing = Color(0xFF3B82F6);
  static const Color construction = Color(0xFFEF4444);
  static const Color carpentry = Color(0xFF8B5CF6);
  static const Color painting = Color(0xFF10B981);
  static const Color cleaning = Color(0xFF06B6D4);
  static const Color gardening = Color(0xFF84CC16);
  static const Color maintenance = Color(0xFFF97316);
  
  // Order Status Colors
  static const Color pending = Color(0xFFF59E0B);
  static const Color confirmed = Color(0xFF3B82F6);
  static const Color inProgress = Color(0xFF8B5CF6);
  static const Color completed = Color(0xFF10B981);
  static const Color cancelled = Color(0xFFEF4444);
  static const Color disputed = Color(0xFFDC2626);
  
  // Rating Colors
  static const Color ratingFilled = Color(0xFFF59E0B);
  static const Color ratingEmpty = Color(0xFFE5E7EB);
  
  // Gradient Colors
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, primaryDark],
  );
  
  static const LinearGradient secondaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [secondary, secondaryDark],
  );
  
  static const LinearGradient accentGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accent, accentDark],
  );
  
  // Material Color Swatches
  static const MaterialColor primarySwatch = MaterialColor(
    0xFFF5C400,
    <int, Color>{
      50: Color(0xFFFEF9E7),
      100: Color(0xFFFDF2C4),
      200: Color(0xFFFBE99D),
      300: Color(0xFFF9E076),
      400: Color(0xFFF7D959),
      500: Color(0xFFF5C400),
      600: Color(0xFFF4BE00),
      700: Color(0xFFF2B600),
      800: Color(0xFFF0AF00),
      900: Color(0xFFEDA200),
    },
  );
  
  static const MaterialColor secondarySwatch = MaterialColor(
    0xFF1E3A8A,
    <int, Color>{
      50: Color(0xFFEFF6FF),
      100: Color(0xFFDBEAFE),
      200: Color(0xFFBFDBFE),
      300: Color(0xFF93C5FD),
      400: Color(0xFF60A5FA),
      500: Color(0xFF3B82F6),
      600: Color(0xFF2563EB),
      700: Color(0xFF1D4ED8),
      800: Color(0xFF1E40AF),
      900: Color(0xFF1E3A8A),
    },
  );
  
  // Helper methods
  static Color getServiceCategoryColor(String category) {
    switch (category.toLowerCase()) {
      case 'electrical':
      case 'كهرباء':
        return electrical;
      case 'plumbing':
      case 'سباكة':
        return plumbing;
      case 'construction':
      case 'حدادة':
        return construction;
      case 'carpentry':
      case 'نجارة':
        return carpentry;
      case 'painting':
      case 'دهان':
        return painting;
      case 'cleaning':
      case 'تنظيف':
        return cleaning;
      case 'gardening':
      case 'بستنة':
        return gardening;
      case 'maintenance':
      case 'صيانة':
        return maintenance;
      default:
        return primary;
    }
  }
  
  static Color getOrderStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'pending':
      case 'في الانتظار':
        return pending;
      case 'confirmed':
      case 'مؤكد':
        return confirmed;
      case 'in_progress':
      case 'قيد التنفيذ':
        return inProgress;
      case 'completed':
      case 'مكتمل':
        return completed;
      case 'cancelled':
      case 'ملغي':
        return cancelled;
      case 'disputed':
      case 'متنازع عليه':
        return disputed;
      default:
        return grey500;
    }
  }
  
  static Color withOpacity(Color color, double opacity) {
    return color.withOpacity(opacity);
  }
  
  static Color lighten(Color color, [double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(color);
    final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
    return hslLight.toColor();
  }
  
  static Color darken(Color color, [double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return hslDark.toColor();
  }
}

