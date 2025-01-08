import 'package:flutter/material.dart';
import 'package:yourpen_1/controls/loading_button.dart';

class GradientLoadingButton extends StatelessWidget {
  /// The main content inside the button (e.g., Text, Icon, etc.)
  final Widget child;
  
  /// Whether to show the loading spinner.
  final bool isLoading;
  
  /// If null or if `isLoading` is true, the button is disabled (gray).
  final VoidCallback? onPressed;

  /// Gradient to use when the button is enabled.
  final Gradient gradient;

  /// Width of the button (optional).
  final double? width;

  /// Corner radius of the button (optional).
  final double? borderRadius;

  /// Padding inside the button (optional).
  final EdgeInsetsGeometry? padding;

  const GradientLoadingButton({
    Key? key,
    required this.child,
    required this.onPressed,
    required this.gradient,
    this.isLoading = false,
    this.width,
    this.borderRadius,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // The button is considered "enabled" only if onPressed is not null and not loading
    final bool isEnabled = (onPressed != null) && !isLoading;
    final BorderRadius borderRadiusValue = BorderRadius.circular(borderRadius ?? 0);

    return Container(
      width: width,
      decoration: BoxDecoration(
        // If enabled, show the gradient; otherwise, a solid gray color
        gradient: isEnabled ? gradient : null,
        color: isEnabled ? null : Colors.grey,
        borderRadius: borderRadiusValue,
      ),
      // Material is needed for InkWell (ripple effects) or other material features
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          // Disable tap if not enabled
          onTap: isEnabled ? onPressed : null,
          borderRadius: borderRadiusValue,
          child: Padding(
            padding: padding ?? EdgeInsets.zero,
            child: Row(
              mainAxisSize: MainAxisSize.min, // Fit closely around child
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Show a spinner if loading
                if (isLoading) ...[
                  const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white, // Adjust as needed
                    ),
                  ),
                  const SizedBox(width: 8), // Space between spinner and child
                ],
                
                // The child widget (e.g. Text, Icon, etc.)
                child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class GradientButton extends StatelessWidget {
//   final VoidCallback? onPressed;
//   final Widget child;
//   final double? width;
//   final Gradient gradient;
//   final double? borderRadius;
//   final EdgeInsetsGeometry? padding;

//   const GradientButton(
//       {super.key, required this.onPressed, required this.child, required this.gradient, this.width, this.borderRadius, this.padding});

//   @override
//   Widget build(BuildContext context) {
//     final bool isEnabled = onPressed != null;
//     final BorderRadius borderRadius = BorderRadius.circular(this.borderRadius ?? 0);

//     return Container(
      
//       decoration: BoxDecoration(
//         gradient: isEnabled ? gradient : LinearGradient(colors: [Colors.grey.shade400, Colors.grey.shade600]),
//         borderRadius: borderRadius
//       ),
//       child: Material(
//         color: Colors.transparent,
//         child: MaterialButton(
//           onPressed: onPressed,
//           padding: padding,
//           materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//           shape: RoundedRectangleBorder(
//             borderRadius: borderRadius
//           ),
//           child: child),
//         // child: InkWell(
//         //   onTap: onPressed,
//         //   borderRadius: borderRadius,
//         //   // child: Opacity(
//         //     // opacity: isEnabled ? 1.0 : 0.2,
//         //     child: Container(
//         //       padding: padding,
//         //       alignment: Alignment.center,
//         //       child: child, // Use the provided child widget
//         //     ),
//         //   // ),
//         // ),
//       ),
//     );
//   }
// }