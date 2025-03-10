import 'package:flutter/material.dart';
import 'summary.dart';
import 'state_management.dart';

class Fundamentals extends StatelessWidget {
  const Fundamentals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fundamentals and Key Concepts'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Flutter Widgets",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.blueAccent, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Everything in Flutter is a widget! Widgets are the building blocks of a Flutter UI, similar to components in other frameworks."
              " They describe what should appear on the screen and can be composed together to create complex layouts.",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 15),
            _buildLayerSection(
              title: "Stateless Widgets",
              description:
                  "Stateless widgets are immutable. Once created, they cannot change their internal state.",
              example:
                  "Examples: Text, Icon, Image, Container. These widgets do not update once rendered.",
              color: Colors.greenAccent,
            ),
            _buildLayerSection(
              title: "Stateful Widgets",
              description:
                  "Stateful widgets can change dynamically during the app's lifecycle. They maintain internal state that affects how they render.",
              example:
                  "Examples: TextField, Checkbox, AnimatedContainer. These widgets update based on user interaction or other events.",
              color: Colors.orangeAccent,
            ),
            const SizedBox(height: 20),
            Text(
              "Flutter's Layered Architecture",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.blueAccent, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Flutter is built on a layered system, consisting of three main layers:",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 15),
            _buildLayerSection(
              title: "Framework Layer (What You Code)",
              description:
                  "Written in Dart. This is where developers interact directly. Provides the Flutter SDK, widgets, animation, and state management.",
              example:
                  "Widgets, Navigation, State Management, and UI interactions are all handled here.",
              color: Colors.greenAccent,
            ),
            _buildLayerSection(
              title: "Engine Layer (Behind the Scenes)",
              description:
                  "Written in C++. Handles graphics rendering (Skia), text layout, and the Dart runtime.",
              example:
                  "You don't modify this layer directly. It converts UI code into low-level rendering calls.",
              color: Colors.orangeAccent,
            ),
            _buildLayerSection(
              title: "Embedder Layer (Platform-Specific Code)",
              description:
                  "Written in Java/Kotlin (Android) or Objective-C/Swift (iOS). Handles communication with the OS.",
              example:
                  "Allows access to native features like camera, Bluetooth, and sensors via platform channels.",
              color: Colors.purpleAccent,
            ),
            const SizedBox(height: 20),
            Text(
              "The Engine Layer and the Embedding Layer are the reasons how Flutter "
              "allows developers to code once and deploy on multiple platforms."
            ),
            const SizedBox(height: 30),
            Text(
              "State Management",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.blueAccent, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "'State': the data needed to build your UI.\n\n"
              "When state changes (e.g., a user presses a button to reveal more information), the UI is rebuilt from scratch.",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 15),
            _buildLayerSection(
              title: "Ephemeral State vs. App State",
              description:
                  "Ephemeral: Local to the page, relates heavily to UI.\n"
                  "App: Shared across user sessions (e.g., login information, user preferences).",
              example:
                  "Ephemeral state is used for things like animations and form input fields.\n"
                  "App state is used for authentication, settings, or shopping cart data that persists across multiple screens.",
              color: Colors.tealAccent,
            ),
            const SizedBox(height: 15),
            const Text(
              "State management is crucial to ensure that changes in state are reflected in the UI and that features like user authentication or settings remain synchronized across multiple screens.",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height:15),
            ElevatedButton(
              child: const Text('State Management Demo'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterApp()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLayerSection({
    required String title,
    required String description,
    required String example,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Card(
        color: Colors.black54,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: color),
              ),
              const SizedBox(height: 5),
              Text(
                description,
                style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
              const SizedBox(height: 5),
              Text(
                example,
                style: const TextStyle(fontSize: 18, color: Colors.cyanAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
