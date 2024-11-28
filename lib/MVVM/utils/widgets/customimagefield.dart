import 'package:flutter/material.dart';

class CustomImageField extends StatelessWidget {
  final String text;
  final String imageUrl;

  const CustomImageField({
    super.key,
    required this.text,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60, // Adjusted height for better layout
      width: 600,
      child: Card(
        elevation: 10,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Colors.blue,
          ),
        ),
        color: const Color.fromARGB(255, 252, 252, 252),
        child: Row(
          children: [
            // Image
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Text beside the image
            const SizedBox(width: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
