import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maxway_task/assets/colors/colors.dart';
import 'package:maxway_task/core/widgets/w_scale.dart';

class WButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  final Color color;
  final Color textColor;
  final TextStyle? textStyle;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final GestureTapCallback onTap;
  final Widget? child;
  final BoxBorder? border;
  final bool loading;
  final bool disabled;
  final double? borderRadius;
  final Color disabledColor;

  const WButton({
    required this.onTap,
    this.width,
    this.borderRadius,
    this.height,
    this.text = '',
    this.color = yellow,
    this.textColor = Colors.blueGrey,
    this.textStyle,
    this.margin,
    this.padding,
    this.border,
    this.loading = false,
    this.disabled = false,
    this.disabledColor = Colors.grey,
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: WScaleAnimation(
          onTap: () {
            if (!(loading || disabled)) {
              onTap();
            }
          },
          isDisabled: disabled,
          child: Container(
            width: width,
            height: height,
            padding: padding ?? const EdgeInsets.all(14),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: disabled ? disabledColor : color,
              borderRadius: BorderRadius.circular(borderRadius ?? 6),
              border: border,
            ),
            child: loading
                ? const Center(
                    child: CupertinoActivityIndicator(),
                  )
                : child ??
                    Text(
                      text,
                      style: textStyle ??
                          Theme.of(context).textTheme.headline3!.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: textColor,
                              ),
                    ),
          ),
        ),
      );
}
