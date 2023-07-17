import 'package:apph2/theme/app_theme_base.dart';
import 'package:apph2/theme/app_theme_factory.dart';
import 'package:apph2/theme/dimension.dart';
// import 'package:apph2/theme/responsive/responsive_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
/// Customization of Flutter TextField.
///
class CustomTextFormField extends StatefulWidget {
  ///
  /// TextField controller.
  ///
  final TextEditingController? controller;

  ///
  /// Fired when text is changed.
  ///
  final ValueChanged<String>? onChanged;

  ///
  /// Fired when edition is completed.
  ///
  final VoidCallback? onEditingComplete;

  /// {@macro flutter.widgets.editableText.onSubmitted}
  ///
  /// See also:
  ///
  ///  * [TextInputAction.next] and [TextInputAction.previous], which
  ///    automatically shift the focus to the next/previous focusable item when
  ///    the user is done editing.
  final ValueChanged<String>? onFieldSubmitted;

  ///
  /// Text field label
  ///
  final String? labelText;

  ///
  /// Placeholder text
  ///
  final String? hintText;

  ///
  /// Counter text
  ///
  final String? counterText;

  ///
  /// Helper text
  ///
  final String? helperText;

  ///
  /// The style to use for the [helperText].
  ///
  final TextStyle? helperStyle;

  ///
  /// Error message;
  ///
  final String? errorMessage;

  ///
  /// Error message;
  ///
  final TextStyle? errorStyle;

  ///
  /// Maximum number of lines on error message. Default 1.
  ///
  final int errorMaxLines;

  ///
  /// Should be focused automatically
  ///
  final bool autoFocus;

  ///
  /// Whether to keep the keyboard open, defaults to false
  ///
  final bool keepKeyboardOpen;

  /// Defines the keyboard focus for this widget.
  final FocusNode? focusNode;

  ///
  /// Validator method
  ///
  final FormFieldValidator<String>? validator;

  ///
  /// Shows a prefix success indicator icon if [validator] do not have any
  /// issues and [errorMessage] is null.
  ///
  final bool showSuccessIndicator;

  ///
  /// Validator behavior. Default [AutovalidateMode.disabled]
  ///
  final AutovalidateMode? autovalidateMode;

  ///
  /// Whether widget shows or not the prefix, even the success prefix
  ///
  final bool showPrefix;

  ///
  /// Prefix widget
  ///
  final Widget? prefix;

  ///
  /// Suffix icon to be positioned after the text input.
  ///
  final Widget? suffixIcon;

  ///
  /// Suffix action button, positioned after the [suffixIcon]. A
  /// [CustomIconButton] can be used a here.
  ///
  final Widget? suffixAction;

  ///
  /// Keyboard type.
  ///
  final TextInputType? keyboardType;

  ///
  /// Text input action type.
  ///
  final TextInputAction? textInputAction;

  ///
  /// Text input formatters list.
  ///
  final List<TextInputFormatter>? inputFormatters;

  ///
  /// Hide/show the text.
  ///
  final bool obscureText;

  ///
  /// Enable/disable text input.
  ///
  final bool enabled;

  ///
  /// Enable/disable text edition input.
  ///
  final bool readOnly;

  ///
  /// Maximum length of text.
  ///
  final int? maxLength;

  ///
  /// Maximum number of lines. Default 1.
  ///
  final int? maxLines;

  ///
  /// Minimum number of lines.
  ///
  final int? minLines;

  ///
  /// Text input content padding. Default EdgeInsets.only(bottom: 26).
  ///
  final EdgeInsets? contentPadding;

  ///
  /// Enables or disables copy/paste. Default true
  ///
  final bool enableInteractiveSelection;

  ///
  /// Text field initial value
  ///
  final String? initialValue;

  /// Style text
  ///
  final TextStyle? style;

  ///
  /// Text Align
  ///
  final TextAlign textAlign;

  ///
  /// Skip error on change
  ///
  final bool skipErrorsOnChange;

  ///
  /// Function to define dynamically the suffix text
  ///
  final String? Function()? suffixText;

  ///
  /// Scroll Padding
  ///
  final EdgeInsets scrollPadding;

  /// Style text
  ///
  final TextStyle? labelStyle;

  /// Loading effect
  final bool? isLoading;

  /// Configures how the platform keyboard will select an uppercase or
  /// lowercase keyboard.
  ///
  final TextCapitalization textCapitalization;

  ///
  /// Enables or disables auto correction. Default true
  ///
  final bool autocorrect;

  ///
  /// Enables or disables suggestions. Default true
  ///
  final bool enableSuggestions;

  ///
  /// Run reverse border animation when field is hidden
  ///
  final bool animateBorderOnHide;

  ///
  /// If true will hide internal prefix widgets
  ///
  final bool hideSuccessPrefix;

  ///
  /// Whether to hide all input borders
  ///
  final bool hideInputBorders;

  ///
  /// Hint Text Style
  ///
  final TextStyle? hintStyle;

  ///
  /// Counter style
  ///
  final TextStyle? counterStyle;

  ///
  /// If true, will disable the initial fade animation, where some elements are
  /// rendered with a delay. Default value is false
  ///
  final bool disableInitialFadeAnimation;

  ///
  /// Boolean that controls visibility of text cursor, by default the value is false.
  ///
  final bool hideCursor;

  ///
  /// Creates a CustomTextFormField
  ///
  const CustomTextFormField({
    Key? key,
    this.labelText,
    this.controller,
    this.errorMessage,
    this.errorStyle,
    this.errorMaxLines = 1,
    this.hintText,
    this.hintStyle,
    this.counterText,
    this.counterStyle,
    this.helperText,
    this.helperStyle,
    this.autoFocus = false,
    this.keepKeyboardOpen = false,
    this.focusNode,
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.showSuccessIndicator = false,
    this.validator,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.prefix,
    this.suffixIcon,
    this.suffixAction,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
    this.onChanged,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.maxLength,
    this.maxLines = 1,
    this.minLines,
    this.contentPadding,
    this.enableInteractiveSelection = true,
    this.initialValue,
    this.style,
    this.textAlign = TextAlign.start,
    this.skipErrorsOnChange = false,
    this.suffixText,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.showPrefix = true,
    this.textCapitalization = TextCapitalization.none,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.animateBorderOnHide = false,
    this.hideSuccessPrefix = false,
    this.labelStyle,
    this.hideInputBorders = false,
    bool? loading,
    this.disableInitialFadeAnimation = true,
    this.hideCursor = false,
  })  : isLoading = loading,
        assert(
          !showSuccessIndicator || (showSuccessIndicator && validator != null),
          'showSuccessPrefixIndicator only works with a validator function',
        ),
        super(key: key);

  ///
  /// Creates a [CustomTextFormField] for currency input
  ///
  factory CustomTextFormField.withCurrencyInput({
    Key? key,
    String? labelText,
    TextEditingController? controller,
    String? errorMessage,
    TextStyle? errorStyle,
    String? hintText,
    TextStyle? hintStyle,
    String? counterText,
    String? helperText,
    bool autoFocus = false,
    bool keepKeyboardOpen = false,
    FocusNode? focusNode,
    bool obscureText = false,
    bool enabled = true,
    bool readOnly = false,
    bool showSuccessIndicator = false,
    FormFieldValidator<String>? validator,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
    Widget? prefix,
    Widget? suffixIcon,
    Widget? suffixAction,
    TextInputType? keyboardType = TextInputType.number,
    TextInputAction? textInputAction,
    List<TextInputFormatter>? inputFormatters,
    ValueChanged<String>? onChanged,
    VoidCallback? onEditingComplete,
    int? maxLength,
    int maxLines = 1,
    int? minLines,
    EdgeInsets? contentPadding,
    bool enableInteractiveSelection = true,
    String? initialValue,
    TextStyle? style,
    TextAlign textAlign = TextAlign.start,
    bool skipErrorsOnChange = false,
    ValueGetter<String>? suffixText,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    bool showPrefix = true,
    TextCapitalization textCapitalization = TextCapitalization.none,
    bool autocorrect = true,
    bool enableSuggestions = true,
    bool animateBorderOnHide = false,
    bool hideSuccessPrefix = false,
    TextStyle? labelStyle,
    bool hideInputBorders = false,
    bool? loading,
    String? inputFormatterSymbol,
    bool disableInitialFadeAnimation = false,
    bool hideCursor = false,
    ValueChanged<String>? onFieldSubmitted,
  }) =>
      CustomTextFormField(
        labelText: labelText,
        controller: controller,
        errorMessage: errorMessage,
        errorStyle: errorStyle,
        hintText: hintText,
        hintStyle: hintStyle,
        counterText: counterText,
        helperText: helperText,
        autoFocus: autoFocus,
        keepKeyboardOpen: keepKeyboardOpen,
        focusNode: focusNode,
        obscureText: obscureText,
        enabled: enabled,
        readOnly: readOnly,
        showSuccessIndicator: showSuccessIndicator,
        validator: validator,
        autovalidateMode: autovalidateMode,
        prefix: prefix,
        suffixIcon: suffixIcon,
        suffixAction: suffixAction,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        disableInitialFadeAnimation: disableInitialFadeAnimation,
        onFieldSubmitted: onFieldSubmitted,
        inputFormatters: [
          if (inputFormatters?.isNotEmpty ?? false) ...inputFormatters!,

          // /// Prevents numeric overflow
          // LengthLimitingTextInputFormatter(
          //   kCurrencyInputMaxLength,
          //   maxLengthEnforcement: MaxLengthEnforcement.enforced,
          // ),
          // MoneyInputFormatter().maskFor(symbol: inputFormatterSymbol),
        ],
        onChanged: onChanged,
        onEditingComplete: onEditingComplete,
        maxLength: maxLength,
        maxLines: maxLines,
        minLines: minLines,
        contentPadding: contentPadding,
        enableInteractiveSelection: enableInteractiveSelection,
        initialValue: initialValue,
        style: style,
        textAlign: textAlign,
        skipErrorsOnChange: skipErrorsOnChange,
        suffixText: suffixText,
        scrollPadding: scrollPadding,
        showPrefix: showPrefix,
        textCapitalization: textCapitalization,
        autocorrect: autocorrect,
        enableSuggestions: enableSuggestions,
        animateBorderOnHide: animateBorderOnHide,
        hideSuccessPrefix: hideSuccessPrefix,
        labelStyle: labelStyle,
        hideInputBorders: hideInputBorders,
        loading: loading,
        hideCursor: hideCursor,
      );

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField>
    with TickerProviderStateMixin {
  late final AnimationController _foregroundAnimationController;
  late final AnimationController _backgroundAnimationController;
  late final FocusNode _focusNode;

  String? _effectiveError;

  String? _validatorError;

  bool _showSuccessIndicator = false;

  bool _isDirty = false;

  String _value = '';

  String _effectiveInitialValue = '';

  late Animation<double> _delayedAnimation;

  @override
  void initState() {
    super.initState();
    _effectiveError = widget.errorMessage;
    _focusNode = widget.focusNode ?? FocusNode();

    _foregroundAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _backgroundAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _delayedAnimation = Tween<double>(
      begin: widget.disableInitialFadeAnimation ? 1.0 : 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _backgroundAnimationController,
        curve: const Interval(0.5, 1.0),
      ),
    );

    _focusNode.addListener(_focusListener);

    _backgroundAnimationController.forward();

    if (widget.validator != null) {
      _handleInitialValueAndValidity();
    }
  }

  void _handleInitialValueAndValidity() {
    _effectiveInitialValue =
        widget.initialValue ?? widget.controller?.text ?? '';

    if (widget.controller != null) {
      firstValueListener() {
        _updateValueAndValidity(widget.controller!.text);
        widget.controller!.removeListener(firstValueListener);
      }

      widget.controller!.addListener(firstValueListener);
      return;
    }

    _updateValueAndValidity(_effectiveInitialValue);
  }

  void _updateValueAndValidity(String value) {
    if (mounted && value.isNotEmpty) {
      setState(() {
        _value = value;
        _isDirty = _value.isNotEmpty;
        _showSuccessIndicator = _validator(_value) == null;
      });
    }
  }

  @override
  void didUpdateWidget(covariant CustomTextFormField oldWidget) {
    if (widget.skipErrorsOnChange ||
        widget.errorMessage != oldWidget.errorMessage) {
      setState(() {
        _effectiveError = widget.errorMessage ?? _validatorError;
        _showSuccessIndicator = _effectiveError == null && _isDirty;
      });
    }

    if (widget.animateBorderOnHide != oldWidget.animateBorderOnHide) {
      _handleBorderAnimation();
    }

    /// Avoid play success animation twice
    if (widget.hideSuccessPrefix &&
        !oldWidget.hideSuccessPrefix &&
        _showSuccessIndicator &&
        _isDirty) {
      setState(() {
        _isDirty = false;
      });
    }

    super.didUpdateWidget(oldWidget);
  }

  void _handleBorderAnimation() {
    if (mounted) {
      if (widget.animateBorderOnHide) {
        _backgroundAnimationController
            .reverse()
            .whenComplete(_focusNode.unfocus);
      } else {
        _backgroundAnimationController
            .forward()
            .whenComplete(_focusNode.requestFocus);
      }
    }
  }

  void _focusListener() {
    if (mounted) {
      if ((_foregroundAnimationController.isAnimating ||
              _foregroundAnimationController.isCompleted) &&
          !_focusNode.hasFocus) {
        _foregroundAnimationController.reverse();
      } else {
        _foregroundAnimationController.forward();
      }
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_focusListener);
    _foregroundAnimationController.dispose();
    _backgroundAnimationController.dispose();
    super.dispose();
  }

  void _onChanged(value) {
    setState(() {
      _isDirty = true;
      _value = value;
    });

    widget.onChanged?.call(value);

    if (widget.autovalidateMode == AutovalidateMode.onUserInteraction) {
      _handleError(widget.validator?.call(value));
    }
  }

  String? _validator(String? value) {
    String? error;

    if (widget.autovalidateMode != AutovalidateMode.onUserInteraction) {
      error = widget.validator?.call(value);

      if (widget.autovalidateMode == AutovalidateMode.disabled) {
        _handleError(error);
      }
    }

    return error;
  }

  void _handleError([String? error]) {
    setState(() {
      _validatorError = error;
      _effectiveError = error ?? widget.errorMessage;

      _showSuccessIndicator = _effectiveError == null;
    });
  }

  TextStyle? _delayedColorOpacity(TextStyle? defaultTheme) {
    if (defaultTheme?.color?.opacity == 0.0) {
      return defaultTheme;
    }

    return defaultTheme?.copyWith(
      color: defaultTheme.color?.withOpacity(
        (defaultTheme.color?.opacity ?? 1.0) * _delayedAnimation.value,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _backgroundAnimationController,
      builder: (context, _) {
        return AnimatedBuilder(
          animation: _foregroundAnimationController,
          builder: (context, _) {
            final labelStyle = context.theme.inputDecorationTheme.labelStyle;

            return Stack(
              alignment: Alignment.center,
              children: [
                Theme(
                  data: context.theme.copyWith(useMaterial3: false),
                  child: TextFormField(
                    enableInteractiveSelection:
                        widget.enableInteractiveSelection,
                    controller: widget.controller,
                    initialValue: widget.initialValue,
                    autofocus: widget.keepKeyboardOpen || widget.autoFocus,
                    focusNode: _focusNode,
                    autovalidateMode: widget.autovalidateMode,
                    validator: _validator,
                    scrollPadding: widget.scrollPadding,
                    autocorrect: widget.autocorrect,
                    enableSuggestions: widget.enableSuggestions,
                    textCapitalization: widget.textCapitalization,
                    keyboardType: widget.keyboardType,
                    textInputAction: widget.textInputAction,
                    inputFormatters: widget.inputFormatters,
                    obscureText: widget.obscureText,
                    enabled: widget.enabled,
                    onChanged: _onChanged,
                    onEditingComplete: widget.onEditingComplete ??
                        (widget.keepKeyboardOpen ? () {} : null),
                    onFieldSubmitted: widget.onFieldSubmitted,
                    maxLength: widget.maxLength,
                    maxLines: widget.maxLines,
                    minLines: widget.minLines,
                    readOnly: widget.readOnly,
                    showCursor: widget.hideCursor
                        ? !widget.hideCursor
                        : _delayedAnimation.isCompleted,
                    style: widget.style,
                    textAlign: widget.textAlign,
                    decoration: InputDecoration(
                      labelText: widget.labelText,
                      suffix: widget.suffixText != null
                          ? Text(
                              widget.suffixText!.call() ?? '',
                            )
                          : null,
                      labelStyle: _delayedColorOpacity(
                        widget.labelStyle?.copyWith(
                              color: _effectiveError != null
                                  ? context.colorScheme.error
                                  : widget.labelStyle?.color,
                            ) ??
                            labelStyle?.copyWith(
                              color: _effectiveError != null
                                  ? context.colorScheme.error
                                  : labelStyle.color,
                            ),
                      ),
                      alignLabelWithHint: true,
                      hintText: widget.hintText,
                      counterText: widget.counterText,
                      counterStyle: widget.counterStyle,
                      floatingLabelStyle: _focusNode.hasFocus
                          ? context.theme.inputDecorationTheme.labelStyle!
                              .copyWith(color: AppThemeBase.colorPrimaryMedium)
                          : context.theme.inputDecorationTheme.labelStyle,
                      hintStyle: widget.hintStyle ??
                          _delayedColorOpacity(
                            context.theme.inputDecorationTheme.hintStyle,
                          )?.copyWith(fontSize: widget.style?.fontSize),
                      helperText: widget.helperText,
                      helperStyle: widget.helperStyle ??
                          _delayedColorOpacity(
                            context.theme.inputDecorationTheme.helperStyle,
                          ),
                      errorText: _effectiveError,
                      errorStyle: _delayedColorOpacity(
                        widget.errorStyle ??
                            context.theme.inputDecorationTheme.errorStyle,
                      ),
                      errorMaxLines: widget.errorMaxLines,
                      suffixIcon: widget.suffixIcon == null &&
                              widget.suffixAction == null
                          ? null
                          : FadeTransition(
                              opacity: _delayedAnimation,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (widget.suffixIcon != null)
                                    widget.suffixIcon!,
                                ],
                              ),
                            ),
                      contentPadding: widget.contentPadding ??
                          EdgeInsets.symmetric(
                            horizontal: Dimension.sm.width,
                            vertical: Dimension.sm.width,
                          ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
