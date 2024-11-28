import 'package:event_app/MVVM/utils/constant/colors.dart';
import 'package:event_app/MVVM/utils/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class AddResult extends StatefulWidget {
  const AddResult({super.key});

  @override
  State<AddResult> createState() => _AddResultState();
}

class _AddResultState extends State<AddResult> {
  final List<String> Names = ["Oppana"];

  String? _selectedName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Result"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Adjusted padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Dropdown button
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              ),
              hint: const Text("Oppana"),
              value: _selectedName,
              items: Names.map((name) {
                return DropdownMenuItem<String>(
                  value: name,
                  child: Text(name),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedName = value;
                });
                print("Selected: $value");
              },
            ),
            const SizedBox(height: 20),
            // Image container
            Container(
              height: 250,
              width: 370,
              decoration: BoxDecoration(
                color:secondarycolor.c, 
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/4904/4904233.png",
                    scale: 10
                  ),
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1),
              ),
            ),
            SizedBox(height: 350,),
            SizedBox(height: 50,width: 370,
              child: Custombutton(
                color: primarycolor.c,
               onpress: (){},
                text: "Submit"),
            )
          ],
        ),
      ),
    );
  }
}
