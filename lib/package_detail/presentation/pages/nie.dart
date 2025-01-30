import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class Nie extends StatefulWidget {
  const Nie({super.key});

  @override
  State<Nie> createState() => _NieState();
}

class _NieState extends State<Nie> {

  late String input;
  bool showPassword = false;

  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 350,
          child: TextField(
            // maxLength: 60,
            obscureText: showPassword,
            obscuringCharacter: "*",
            // inputFormatters: [CustomPhoneNumberFormatter()],
            clipBehavior: Clip.hardEdge,
            controller: controller,
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            showCursor: true,
            cursorWidth: 4,
            keyboardType: TextInputType.emailAddress,
            cursorHeight: 40,
            cursorOpacityAnimates: true,
            cursorRadius: Radius.circular(2),
            decoration: InputDecoration(

              counterText: "counterrrr",
              suffixIcon: GestureDetector(
                child: Icon(Icons.access_alarm),
                onTap: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
              ),
              prefixText: "Pre",
              label: Text("Search bar"),
              // labelStyle: TextStyle(fontSize: 20),
              hintText: "Search",
              helperText: "Xullasi ism yoz",
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black.withValues(alpha: 0.5),
              ),
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.grey,
            ),
          ),
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          controller.text = "Umarri etkani";
        },
        icon: Icon(Icons.add),
      ),
    );
  }
}
