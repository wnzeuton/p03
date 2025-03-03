import 'package:flutter/material.dart';

import 'fundamentals.dart';

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
                  "Dart is a programming language optimized for building fast, cross-platform apps. Flutter development is done in the Dart language. "
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
                      child: Column(
                        children: [
                          Text(
                            "JIT compilation translates Dart source code into machine code at runtime, "
                            "meaning the code is compiled while the program is running. This allows for "
                            "dynamic execution and features like hot reload, making it especially useful during development.",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "flutter run",
                            style: TextStyle(color: Color.fromARGB(255, 240, 28, 28), fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ]
                ),
                ExpansionTile(
                  title: Text(
                    "- Ahead-Of-Time (AOT) Compilation",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          children: [
                            Text(
                              "AOT compilation translates Dart code into machine code before execution, "
                              "rather than at runtime. This results in faster startup times and better overall performance, "
                              "which is ideal for production environments.",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "flutter build",
                              style: TextStyle(color: Color.fromARGB(255, 240, 28, 28), fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            SizedBox(height: 10),
                          ],
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
                Padding(
                  padding: EdgeInsets.all(32),
                  child: Image.asset('assets/images/ios_intro.png', scale: 1, width: 624),
                ),
                const SizedBox(height: 20),
                Text(
                  "Notable benefits of using Flutter",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 28, color: Colors.white),
                ),
                const SizedBox(height: 15),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Cross-Platform: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.cyan),
                      ),
                      TextSpan(
                        text: "Use a single codebase to deploy on multiple platforms.\n",
                        style: TextStyle(color: Colors.white),
                      ),
                      
                      TextSpan(
                        text: "Built with Dart: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.cyan),
                      ),
                      TextSpan(
                        text: "A language optimized for UI development that enables fast performance with both JIT and AOT compilation, giving us access to features like hot reload.\n",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(
                        text: "Third-Party Packages: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.cyan),
                      ),
                      TextSpan(
                        text: "Flutter's ecosystem of packages allows developers to easily add functionality like networking and database integration.\n",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Colors.black,
                        title: Text(
                          "Notable Dart Features for Flutter",
                          style: TextStyle(color: Colors.white),
                        ),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "1. Null Safety: ",
                                      style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: "Dart offers strong null safety to help prevent null reference errors. "
                                          "You can use '?' to indicate nullable types and '!' to assert that a variable is not null.",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "2. Type Inference: ",
                                      style: TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: "Dart can infer types, which reduces the need to specify types explicitly. "
                                          "However, it is still strongly typed to maintain clarity and readability.",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "3. Asynchronous Programming: ",
                                      style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: "Dart supports async programming with 'async', 'await', and 'Future', "
                                          "allowing for non-blocking operations, which is essential in Flutter for building responsive UIs.",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "4. Extension Methods: ",
                                      style: TextStyle(color: Colors.purpleAccent, fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: "Dart allows you to add methods to existing classes without modifying the class itself, "
                                          "which can be useful for enhancing Flutter widgets or other libraries.",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text(
                              "Close",
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text(
                    "More on Dart with Flutter",
                    style: TextStyle(color: Colors.blueAccent, fontSize: 24),
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  child: const Text('Fundamentals and Key Concepts'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Fundamentals()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}