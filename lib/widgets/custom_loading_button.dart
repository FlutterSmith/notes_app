import 'package:flutter/material.dart';
import 'package:loading_btn/loading_btn.dart';
import 'package:note_app/constants.dart';

class CustomLoadingButton extends StatelessWidget {
  const CustomLoadingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LoadingBtn(
      height: 50,
      borderRadius: 10,
      animate: true,
      color: kPrimaryColor,
      width: MediaQuery.of(context).size.width * 1,
      loader: Container(
        padding: const EdgeInsets.all(10),
        width: 40,
        height: 40,
        child: const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
        ),
      ),
      child: const Text("Add",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
      onTap: (startLoading, stopLoading, btnState) async {
        if (btnState == ButtonState.idle) {
          startLoading();
          // call your network api
          await Future.delayed(const Duration(seconds: 1));
          stopLoading();
        }
      },
    );
  }
}
