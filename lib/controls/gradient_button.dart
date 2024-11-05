import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final double? width;
  final Gradient gradient;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;

  const GradientButton(
      {super.key, required this.onPressed, required this.child, required this.gradient, this.width, this.borderRadius, this.padding});

  @override
  Widget build(BuildContext context) {
    final bool isEnabled = onPressed != null;
    final BorderRadius borderRadius = BorderRadius.circular(this.borderRadius ?? 0);

    return Container(
      
      decoration: BoxDecoration(
        gradient: isEnabled ? gradient : LinearGradient(colors: [Colors.grey.shade400, Colors.grey.shade600]),
        borderRadius: borderRadius
      ),
      child: Material(
        color: Colors.transparent,
        child: MaterialButton(
          onPressed: onPressed,
          padding: padding,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius
          ),
          child: child),
        // child: InkWell(
        //   onTap: onPressed,
        //   borderRadius: borderRadius,
        //   // child: Opacity(
        //     // opacity: isEnabled ? 1.0 : 0.2,
        //     child: Container(
        //       padding: padding,
        //       alignment: Alignment.center,
        //       child: child, // Use the provided child widget
        //     ),
        //   // ),
        // ),
      ),
    );
  }
}
