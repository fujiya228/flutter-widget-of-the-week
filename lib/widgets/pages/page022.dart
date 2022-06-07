import 'package:flutter/material.dart';
import '../back_page_button.dart';

class Page022 extends StatefulWidget {
  const Page022({
    Key? key,
  }) : super(key: key);

  @override
  State<Page022> createState() => _Page022State();
}

class _Page022State extends State<Page022> {
  bool enableAbsorbing = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  SizedBox(
                    width: 200.0,
                    height: 100.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: null,
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    height: 200.0,
                    child: AbsorbPointer(
                      absorbing: enableAbsorbing,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue.shade200,
                        ),
                        onPressed: () {},
                        child: null,
                      ),
                    ),
                  ),
                ],
              ),
              Switch(
                value: enableAbsorbing,
                onChanged: (value) => {
                  setState(() => enableAbsorbing = value),
                },
              ),
            ],
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
