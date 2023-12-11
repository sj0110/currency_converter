import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double iNR = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final border = OutlineInputBorder(
    //   borderSide: const BorderSide(
    //     color: Color.fromARGB(255, 27, 81, 45),
    //     width: 1.5,
    //     style: BorderStyle.solid,
    //   ),
    //   borderRadius: BorderRadius.circular(10),
    // );

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        // toolbarHeight: 200,
        middle: Text(
          "Currency \nConverter",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 46),
          textAlign: TextAlign.center,
        ),
        // elevation: 2.0,
        backgroundColor: Color.fromARGB(170, 27, 81, 45),
        // foregroundColor: CupertinoColors.white,
        // shadowColor: Color.fromARGB(170, 27, 81, 45),
        // shadowColor: const Color.fromARGB(255, 115, 226, 167),
        // centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 28, 124, 84),
      child: Center(
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
                  color: CupertinoColors.white,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                    color: Color.fromARGB(150, 27, 81, 45),
                    fontWeight: FontWeight.bold),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(
                    color: const Color.fromARGB(255, 27, 81, 45),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: "Please enter the Amount in USD",
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 15),
              CupertinoButton(
                onPressed: () {
                  setState(() {
                    iNR = 81 * double.parse(textEditingController.text);
                  });
                },
                alignment: Alignment.center,
                color: const Color.fromARGB(255, 115, 226, 167),
                borderRadius: BorderRadius.circular(5),
                // style: CupertinoButton.styleFrom(
                //   elevation: 4,
                //   shape: const RoundedRectangleBorder(
                //     side: BorderSide(
                //         color: Color.fromARGB(255, 27, 81, 45), width: 1.5),
                //     borderRadius: BorderRadius.all(
                //       Radius.circular(5),
                //     ),
                //   ),
                //   foregroundColor: const Color.fromARGB(255, 27, 81, 45),
                //   backgroundColor: const Color.fromARGB(255, 115, 226, 167),
                //   minimumSize: const Size(double.infinity, 60),
                // ),
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
