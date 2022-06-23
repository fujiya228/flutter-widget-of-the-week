import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page029 extends StatelessWidget {
  const Page029({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 240.0,
                width: 240.0,
                color: Colors.blue[50],
                child: const FlutterLogo(
                  size: 60,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8),
              ),
              SizedBox(
                height: 120.0,
                width: 120.0,
                child: Container(
                  height: 240.0, // SizedBoxの方が優先される
                  width: 240.0, // SizedBoxの方が優先される
                  color: Colors.blue[50],
                  child: const FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8),
              ),
              SizedBox(
                width: double.infinity,
                height: 120.0,
                child: Container(
                  height: 240.0,
                  width: 240.0,
                  color: Colors.blue[50],
                  child: const FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
