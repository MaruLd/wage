import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

class PointField extends ConsumerStatefulWidget {
  const PointField({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<PointField> createState() => _PointFieldState();
}

class _PointFieldState extends ConsumerState<PointField> {
  TextEditingController textEditingController = TextEditingController();

  late TextEditingController _controller;

  bool hasError = false;
  bool isLoading = false;
  String pinCode = "";

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Parameters pinCodes = Parameters(parameterList: [pinCode, pinCode]);
    // final pinProvider = ref.watch(updatePinProvider(pinCodes));

    return Column(
      children: <Widget>[
        const SizedBox(height: 30),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: global.primary2, width: 1.0),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            width: 200,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                  textAlign: TextAlign.center,
                  showCursor: false,
                  style: GoogleFonts.montserrat(
                    fontSize: 22,
                    color: global.primary2,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 22,
                      color: global.primary2,
                      fontWeight: FontWeight.w600,
                    ),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  controller: _controller,
                  onSubmitted: (String value) async {
                    await showDialog<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Thanks!'),
                          content: Text(
                              'You typed "$value", which has length ${value.characters.length}.'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  }),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              child: Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: global.cyan, width: 1.0),
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                ),
                child: Center(
                  child: Text('Clear',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: global.cyan,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      )),
                ),
              ),
              onPressed: () {
                textEditingController.clear();
                setState(
                  () {
                    hasError = false;
                  },
                );
              },
            ),
          ],
        )
      ],
    );
  }
}
