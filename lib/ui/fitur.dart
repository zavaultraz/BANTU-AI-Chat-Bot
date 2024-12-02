import 'package:chatbot_gemini/widget/icon_gradient.dart';
import 'package:flutter/material.dart';

import '../widget/text_gradient.dart';

class PromptLibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 12.0, // Spasi horizontal antar elemen
          runSpacing: 12.0, // Spasi vertikal antar elemen
          children: [
            _buildFeatureChip(Icons.image, "Image search"),
            _buildFeatureChip(Icons.audiotrack, "Search song"),
            _buildFeatureChip(Icons.brush, "Generate image"),
            _buildFeatureChip(Icons.record_voice_over_rounded, "Gama talk"),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureChip(IconData icon, String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GradientIcon(icon, size: 25,gradient:
          LinearGradient (
            colors: [
              Color(0xFFF69170),
              Color(0xFF7D96E6),
            ],
          ),
          ),
          SizedBox(width: 8),
          GradientText(
            label,
            style: TextStyle(
              fontSize: 16.6,
              fontWeight: FontWeight.bold
            ),
            gradient: LinearGradient(
                colors: [
                  Color(0xFFF69170),
                  Color(0xFF7D96E6),
                ]
            ),
          ),
        ],
      ),
    );
  }
}