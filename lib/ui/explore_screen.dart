import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, // Atur ke Axis.horizontal jika ingin scroll horizontal
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            shrinkWrap: true, // Penting untuk memastikan GridView menyesuaikan tinggi sesuai konten
            physics: NeverScrollableScrollPhysics(), // Nonaktifkan scroll bawaan GridView
            children: [
              _buildOptionCard(
                icon: Icons.brush,
                title: "Art",
                description: "Create digital art, from sketches to finished pieces",
                color: Colors.purple,
              ),
              _buildOptionCard(
                icon: Icons.card_travel,
                title: "Booking",
                description:
                "Find stays, flights, car rentals, airport taxis, and attractions",
                color: Colors.orange,
              ),
              _buildOptionCard(
                icon: Icons.code,
                title: "Code",
                description:
                "Write programming code or algorithms for complex applications",
                color: Colors.green,
              ),
              // Tambahkan lebih banyak kartu jika diperlukan
              _buildOptionCard(
                icon: Icons.calculate_rounded,
                title: "Study",
                description:
                "Help your homework, answer your question, make presentation",
                color: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    );

  }

  Widget _buildOptionCard({
    required IconData icon,
    required String title,
    required String description,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: color.withOpacity(0.2),
              child: Icon(
                icon,
                color: color,
              ),
            ),
            SizedBox(height: 12),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}