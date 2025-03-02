import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Introduction'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What is Dart?",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 30, color: Colors.blueAccent),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Dart is a programming language optimized for building fast, cross-platform apps. "
                  "Some key features include:",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                ExpansionTile(
                  title: Text(
                    "- Just-In-Time (JIT) Compilation",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "JIT compilation translates Dart source code into machine code at runtime, "
                        "meaning the code is compiled while the program is running. This allows for "
                        "dynamic execution and features like hot reload, making it especially useful during development.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    "- Ahead-Of-Time (AOT) Compilation",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "AOT compilation translates Dart code into machine code before execution, "
                        "rather than at runtime. This results in faster startup times and better overall performance, "
                        "which is ideal for production environments.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Text(
                  "What is Flutter?",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 30, color: Colors.blueAccent),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Flutter is a multi-platform toolkit for developing native-like apps on any of the following platforms: "
                  "iOS, Android, Windows, macOS, Linux, web.",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 20),
                Text(
                  "Notable benefits of using Flutter",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(height: 15),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Cross-Platform: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.cyan),
                      ),
                      TextSpan(
                        text: "Use a single codebase to deploy on multiple platforms.\n",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(
                        text: "Hot Reload: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.cyan),
                      ),
                      TextSpan(
                        text: "Allows developers to see changes instantly without restarting the app.\n",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(
                        text: "Built with Dart: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.cyan),
                      ),
                      TextSpan(
                        text: "A language optimized for UI development that enables fast performance with both JIT and AOT compilation.\n",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(
                        text: "Third-Party Packages: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.cyan),
                      ),
                      TextSpan(
                        text: "Flutter's ecosystem of packages allows developers to easily add functionality like networking and database integration.\n",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}