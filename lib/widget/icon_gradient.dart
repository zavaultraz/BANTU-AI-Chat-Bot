import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  const GradientIcon(
      this.icon, {
        required this.gradient,
        this.size = 24.0,  // Default size is 24.0 if not provided
      });

  final IconData icon;
  final Gradient gradient;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Icon(
        icon,
        size: size,
        color: Colors.white, // The color is ignored as it is replaced by the gradient
      ),
    );
  }
}
