import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Me',
      theme: ThemeData(
        primaryColor: const Color(0xFF00ADB5),
        scaffoldBackgroundColor: const Color(0xFF222831),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFF86D72F),
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Color(0xFFEEEEEE),
          ),
        ),
      ),
      home: const AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '👾 About Me 👾',
          style: TextStyle(
            color: Color(0xFF86D72F),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF2E3D4A),
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xFF86D72F)),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/background.gif',
              fit: BoxFit.cover,
            ).animate(),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/image.jpg'),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text(
                          '👽 Darrell Valentino 👽',
                          style: Theme.of(context).textTheme.headlineLarge,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 6.0),
                        const Text(
                          'NRP: 5026221086',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF00ADB5),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Darrell (Delvin) Valentino Widjaja (He/Him)\n'
                      'GenBI Unggulan Bank Indonesia Scholarship Awardee | '
                      'Information Systems @ITS | Aspiring Software Developer',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFEEEEEE), fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Fun Fact: Saya menyukai kucing, namun saya takut dicakar 😸🐈!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFEEEEEE),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Saat ini, saya aktif mengembangkan keterampilan dalam pemrograman dan berpartisipasi dalam berbagai proyek teknologi.',
                      style: TextStyle(fontSize: 16, color: Color(0xFFEEEEEE), fontWeight: FontWeight.w600,),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
