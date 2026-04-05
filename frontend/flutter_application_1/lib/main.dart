import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('صغيري (My Little One)'),
        backgroundColor: const Color(0xFFB3E5FC), // Light Blue
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Baby Name and Age Counter
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Color(0xFFFFCDD2), // Pastel Pink
                  radius: 30,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'اسم الطفل: علي',
                      style: TextStyle(fontSize: 18, color: Color(0xFF455A64)), // Charcoal Gray
                    ),
                    Text(
                      'العمر: 2 سنوات و 3 أشهر',
                      style: TextStyle(fontSize: 16, color: Color(0xFF455A64)),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),

            // Growth Tracking Section
            const Text(
              'مراقبة النمو',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF455A64)),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Column(
                  children: const [
                    Text(
                      'الطول: 85 سم',
                      style: TextStyle(fontSize: 16, color: Color(0xFF455A64)),
                    ),
                    Text(
                      'الوزن: 12 كجم',
                      style: TextStyle(fontSize: 16, color: Color(0xFF455A64)),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.bar_chart, color: Color(0xFFFFCDD2)), // Icon for Growth Tracking
              ],
            ),
            const SizedBox(height: 16),

            // Vaccination Management
            const Text(
              'إدارة التطعيمات',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF455A64)),
            ),
            const SizedBox(height: 8),
            Column(
              children: [
                const Text(
                  'تطعيمات قادمة: شلل الأطفال - الأسبوع المقبل',
                  style: TextStyle(fontSize: 16, color: Color(0xFF455A64)),
                ),
                const SizedBox(height: 8),
                const Text(
                  'التطعيمات المكتملة: الحصبة - تم',
                  style: TextStyle(fontSize: 16, color: Color(0xFF455A64)),
                ),
              ],
            ),
            const Divider(),

            // Emergency Button
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  // Handle emergency button press
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('تم الاتصال بأرقام الطوارئ')),
                  );
                },
                child: CircleAvatar(
                  backgroundColor: const Color(0xFFFF5252), // Bright Red
                  radius: 30,
                  child: const Icon(Icons.warning, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
