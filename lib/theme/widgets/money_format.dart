import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/services.dart';

class MoneyInputFormatter {
  TextInputFormatter maskFor({
    String? symbol = 'R\$',
    int decimalDigits = 2,
  }) {
    return CurrencyTextInputFormatter(
        symbol: symbol, decimalDigits: decimalDigits, locale: 'pt-BR');
  }

  TextInputFormatter inputWithoutDecimals() => TextInputFormatter.withFunction(
        (oldValue, newValue) => newValue.copyWith(
          text: newValue.text.replaceFirst(RegExp(r'\,[^]*'), ',00'),
        ),
      );

  double parseValue(String value) {
    String cleanedValue = value.replaceAll(RegExp(r'[^\d.,]'), '');

    cleanedValue = cleanedValue.replaceAll('.', '');
    cleanedValue = cleanedValue.replaceAll(',', '.');

    return double.tryParse(cleanedValue) ?? 0.0;
  }
}
