import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

class SearchBar extends StatelessWidget {
  SearchBar({Key? key}) : super(key: key);
  final textfieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        color: global.background,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 250,
            height: 20,
            child: Center(
              child: TextField(
                controller: textfieldController,
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration.collapsed(
                  hintText: 'Tìm kiếm voucher',
                  hintStyle: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          // Consumer(
          //   builder: (context, ref, child) {
          //     return IconButton(
          //       onPressed: () {
          //         if (textfieldController.text.isEmpty) {
          //           ref.refresh(searchProvider);
          //         } else {
          //           ref.refresh(searchProvider);
          //           ref.read(searchProvider.notifier).mapEventsToState(
          //                 SearchedTextChanged(
          //                   text: textfieldController.text,
          //                 ),
          //               );
          //         }
          //       },
          //       icon: const Icon(
          //         Icons.search,
          //         color: whiteColor,
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
