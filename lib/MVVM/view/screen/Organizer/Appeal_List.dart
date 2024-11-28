import 'package:flutter/material.dart';

class AppealList extends StatelessWidget {
  final List<String> _names = [
    "Name",
    "Name",
    "Name",
    "Name",
    "Name",
  ];

  AppealList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appeal List"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _names.length,
        itemBuilder: (context, index) {
          String displayText;
          if (index == 1) {
            displayText = "Rejected";
          } else if (index == 0) {
            displayText = ""; // Empty display text for index 0
          } else {
            displayText = "Accepted";
          }

          // Provide a default color
          Color textColor;
          if (displayText == "Rejected") {
            textColor = Colors.red;
          } else if (displayText == "Accepted") {
            textColor = Colors.green;
          } else {
            textColor = Colors.grey; // Default color for empty or undefined status
          }

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      color: Colors.blue,
                      size: 36,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _names[index],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          "ID Number",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: Text(
                    displayText,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
