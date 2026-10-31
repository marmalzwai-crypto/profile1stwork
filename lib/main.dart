
import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFFFFF9F6),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const Color burgundy = Color(0xFF702D42);
  static const Color rose = Color(0xFF9D5366);
  static const Color blush = Color(0xFFF8E9E9);
  static const Color ivory = Color(0xFFFFF9F6);
  static const Color textColor = Color(0xFF39252C);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Top navigation
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'MY PROFILE',
                    style: TextStyle(
                      color: burgundy,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: rose,
                    size: 25,
                  ),
                ],
              ),

              const SizedBox(height: 22),

              // Profile header
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [burgundy, rose],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: blush,
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'M.M',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: burgundy,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

                    const Text(
                      'Maram.M Alzwai',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 7),

                    const Text(
                      'Software Engineering Student',
                      style: TextStyle(
                        color: Color(0xFFF8E9E9),
                        fontSize: 14,
                      ),
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      'Libyan International University',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),

                    const SizedBox(height: 17),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Creative Mind • Curious Soul',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Three information cards
              Row(
                children: const [
                  Expanded(
                    child: InfoCard(
                      icon: Icons.school_outlined,
                      title: 'Major',
                      value: 'Software\nEngineering',
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: InfoCard(
                      icon: Icons.lightbulb_outline,
                      title: 'Mindset',
                      value: 'Always\nLearning',
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: InfoCard(
                      icon: Icons.palette_outlined,
                      title: 'Style',
                      value: 'Creative\nThinking',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 28),

              // About me
              const SectionTitle(
                title: 'A Little About Me',
                subtitle: 'Get to know me',
              ),

              const SizedBox(height: 12),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(19),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: burgundy.withValues(alpha: 0.05),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const Text(
                  'I am a curious and creative person with a passion '
                      'for technology, design, and continuous learning. '
                      'I enjoy exploring new ideas, developing my skills, '
                      'and expressing my creativity through different '
                      'interests. I believe in growing, trying new things, '
                      'and turning inspiration into something meaningful.',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 14,
                    height: 1.8,
                  ),
                ),
              ),

              const SizedBox(height: 28),

              // Interests
              const SectionTitle(
                title: 'My Interests',
                subtitle: 'Things I love exploring',
              ),

              const SizedBox(height: 14),

              const InterestCard(
                icon: Icons.code,
                title: 'Programming & Technology',
                description: 'Exploring technology and building ideas.',
              ),

              const InterestCard(
                icon: Icons.auto_awesome,
                title: 'Learning New Skills',
                description: 'Always curious and ready to grow.',
              ),

              const InterestCard(
                icon: Icons.brush_outlined,
                title: 'Creativity & Design',
                description: 'Expressing ideas through creativity.',
              ),

              const InterestCard(
                icon: Icons.camera_alt_outlined,
                title: 'Photography',
                description: 'Capturing moments and beautiful details.',
              ),

              const InterestCard(
                icon: Icons.spa_outlined,
                title: 'Fashion & Beauty',
                description: 'Exploring style, beauty, and aesthetics.',
              ),

              const SizedBox(height: 28),

              // Future goals
              const SectionTitle(
                title: 'My Goals',
                subtitle: 'Where I see myself',
              ),

              const SizedBox(height: 12),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: blush,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.flag_outlined,
                      color: burgundy,
                      size: 28,
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Grow, Create & Inspire',
                      style: TextStyle(
                        color: burgundy,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'My goal is to become a skilled software '
                          'engineer, expand my knowledge, explore '
                          'creative opportunities, and build a future '
                          'where technology and creativity come together.',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                        height: 1.7,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Quote
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: burgundy,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  children: [
                    Icon(
                      Icons.format_quote,
                      color: Color(0xFFE8C5CB),
                      size: 32,
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Dream big, stay curious, '
                          'and never stop creating.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      '— MY PERSONAL MOTTO —',
                      style: TextStyle(
                        color: Color(0xFFE8C5CB),
                        fontSize: 10,
                        letterSpacing: 2,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const Center(
                child: Text(
                  'Made with ♡ and creativity',
                  style: TextStyle(
                    color: rose,
                    fontSize: 12,
                  ),
                ),
              ),

              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}

// Reusable information card
class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: const Color(0xFF9D5366),
            size: 25,
          ),
          const SizedBox(height: 9),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF702D42),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF6D5960),
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

// Reusable section heading
class SectionTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const SectionTitle({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF702D42),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: const TextStyle(
            color: Color(0xFF9D5366),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

// Reusable interest card
class InterestCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const InterestCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFF8E9E9),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: const Color(0xFFF8E9E9),
              borderRadius: BorderRadius.circular(13),
            ),
            child: Icon(
              icon,
              color: const Color(0xFF702D42),
              size: 23,
            ),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF702D42),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    color: Color(0xFF806D74),
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.favorite_border,
            color: Color(0xFFCF9BA7),
            size: 18,
          ),
        ],
      ),
    );
  }
}
