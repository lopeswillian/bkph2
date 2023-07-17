import 'dart:math';

import 'package:intl/intl.dart';

///Number extension
extension NumExtensions on num {
  double toDegree() {
    return this * 180 / pi;
  }
  
  double toRadian() {
    return this * pi / 180;
  }
  

  ///Format number
  NumberFormat currencyFormatter({
    String locale = 'pt-BR',
    String symbol = 'R\$',
    int decimalDigits = 2,
    String? customPattern,
    bool compact = false,
  }) =>
      compact
          ? NumberFormat.compactCurrency(
              locale: locale,
              symbol: symbol,
              decimalDigits: 0,
            )
          : NumberFormat.currency(
              locale: locale,
              decimalDigits: decimalDigits,
              symbol: symbol,
              customPattern: customPattern,
            );

  ///Format number as currency
  String toCurrency({
    String locale = 'pt-BR',
    String symbol = 'R\$',
    int decimalDigits = 2,
    String? customPattern,
    bool compact = false,
  }) =>
      currencyFormatter(
        locale: locale,
        symbol: symbol,
        decimalDigits: decimalDigits,
        customPattern: customPattern,
        compact: compact,
      ).format(this);

  ///
  /// Formats a number with percentage signal.
  ///
  String toPercent({
    String locale = 'pt-BR',
    int decimalDigits = 2,
    double total = 100.00,
  }) {
    return NumberFormat.decimalPercentPattern(
      locale: locale,
      decimalDigits: decimalDigits,
    ).format(this / total);
  }

  /// A method that prints a number as DECIMAL_PATTERN.
  String toDecimal({
    String locale = 'pt-BR',
  }) {
    return NumberFormat.decimalPattern(locale).format(this);
  }

  /// Formats a number with the respective + or - signal.
  ///
  /// If defined, the [numberFormatter] will format the number before signal concatenation.
  String signal([String Function(num)? numberFormatter]) {
    final absolute = abs();
    final value = numberFormatter?.call(absolute) ?? absolute;

    if (this == 0.0) return '$value';
    if (isNegative) return '-$value';

    return '+$value';
  }
}
