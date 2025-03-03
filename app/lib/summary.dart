import 'package:flutter/material.dart';

class Sum extends StatelessWidget {
  const Sum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Why Use Flutter?'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Key Reasons:',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SizedBox(height: 10),
            Text(
              '- Fast development with hot reload\n'
              '- Intuitive and simple UI designing\n'
              '- Control over every aspect of the app\n'
              '- Native performance with Dart\n'
              '- Strong community support and growing ecosystem\n'
              '- Support for iOS, Android, Web, and Desktop\n',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}