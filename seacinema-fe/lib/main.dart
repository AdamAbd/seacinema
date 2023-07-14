import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SEA Cinema',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hallo Adam!",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "What do you want to watch?",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            width: 40,
            height: 40,
            margin: const EdgeInsets.only(right: 14),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                    "assets/illustration/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  filled: true,
                  focusColor: Colors.amber,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black12,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black12,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  hintText: 'Search Movie',
                ),
              ),
            ),
            const SizedBox(height: 26),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                "Categories",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 14),
            SizedBox(
              height: 32,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 14 : 0),
                  child: FilledButton.tonal(
                    onPressed: () {},
                    child: const Text("Action"),
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemCount: 4,
              ),
            ),
            const SizedBox(height: 26),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                "Latest Movies",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 14),
            Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.only(right: 14),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                      "assets/illustration/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const CircleAvatar(
              backgroundImage: AssetImage(
                  "assets/illustration/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg"),
            ),
            FilledButton.tonal(onPressed: () {}, child: const Text("data")),
            const SizedBox(height: 40)
          ],
        ),
      ),
    );
  }
}
