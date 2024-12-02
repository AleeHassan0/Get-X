import 'package:flutter/material.dart';
import 'package:getx/MVVM/res/colors/app_color.dart';

class InternetExceptionWidget extends StatefulWidget {
  const InternetExceptionWidget({super.key});

  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
              const Icon(
                Icons.cloud_off,
                color: AppColor.whiteColor,
              ),
              const Text(
                "Unable to show results\nPlease check your internet\n connection",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Container(
                height: 42,
                width: 162,
                decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(4.1)),
                child: Center(
                    child: Text(
                  'RETRY',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
