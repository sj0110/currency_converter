// Operationable
// Create a variable that stores the input value.
// Create a function that multiplies the input value with the current
// conversion rate.
// Store the value in the variable that we created.
// Display the output.
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageeState();
}

class _CurrencyConverterMaterialPageeState
    extends State<CurrencyConverterMaterialPage> {
  double iNR = 0;
  final TextEditingController textEditingController = TextEditingController();
  
  @override
  void dispose() {
    textEditingController.dispose(); 
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 27, 81, 45),
        width: 1.5,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(10),
    );

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        title: const Text(
          "Currency \nConverter",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 46),
          textAlign: TextAlign.center,
        ),
        elevation: 2.0,
        backgroundColor: const Color.fromARGB(170, 27, 81, 45),
        foregroundColor: Colors.white,
        shadowColor: const Color.fromARGB(170, 27, 81, 45),
        // shadowColor: const Color.fromARGB(255, 115, 226, 167),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 28, 124, 84),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR ${iNR == 0 ? 0 : iNR.toStringAsFixed(2)}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 56,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(
                    color: Color.fromARGB(150, 27, 81, 45),
                    fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  hintText: "Please enter the Amount in USD",
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(150, 27, 81, 45),
                      fontWeight: FontWeight.w500),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: const Color.fromARGB(150, 27, 81, 45),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    iNR = 81 * double.parse(textEditingController.text);
                  });
                },
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        color: Color.fromARGB(255, 27, 81, 45), width: 1.5),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  foregroundColor: const Color.fromARGB(255, 27, 81, 45),
                  backgroundColor: const Color.fromARGB(255, 115, 226, 167),
                  minimumSize: const Size(double.infinity, 60),
                ),
                child: const Text(
                  "Convert",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
