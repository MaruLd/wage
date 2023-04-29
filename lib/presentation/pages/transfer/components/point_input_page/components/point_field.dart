import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../widgets/loading_shimmer.dart';

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
  String point = "";

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
                  cursorColor: global.primary2,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    color: global.primary2,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 24,
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
          height: 24,
        ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
            decoration: BoxDecoration(
              color: global.primary2,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ButtonTheme(
              height: 60,
              child: isLoading
                  ? const LoadingShimmer(
                      height: 48.0,
                      width: 300.0,
                      color: Color.fromARGB(118, 2, 193, 123),
                      baseColor: Color.fromARGB(118, 0, 100, 63),
                    )
                  : TextButton(
                      onPressed: () async {},
                      child: const Center(
                          child: Text(
                        "Chuyển Point",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
            )),
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
