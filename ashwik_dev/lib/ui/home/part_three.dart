import 'package:ashwik_dev/ui/home/data/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'data/form_obj.dart';

class PartThree extends StatelessWidget {
  const PartThree({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var nameController = TextEditingController();
    var mobileController = TextEditingController();
    var messageController = TextEditingController();

    return Column(
      spacing: 50.h,
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: RichText(
            text: TextSpan(
              text: 'Contact\t'.toUpperCase(),
              style: Theme.of(context).textTheme.headlineSmall,

              children: [
                TextSpan(
                  text: 'Me'.toUpperCase(),
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        ),
        Wrap(
          direction: Axis.horizontal,
          children: [
            Container(
              alignment: Alignment.center,
              width: 650.h,
              child: Image.asset('images/contact_us.png'),
            ),
            Container(
              padding: EdgeInsets.all(50.h),
              width: 1200.h,
              // decoration: BoxDecoration(
              //   border: Border.all(color: Colors.black, width: 2.0),
              //   borderRadius: BorderRadius.all(Radius.circular(5.h)),
              //   shape: BoxShape.rectangle,
              // ),
              child: Column(
                spacing: 20.h,
                children: [
                  Text(
                    "Feel Free To Drop me your details if you have any exciting opportunity",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: 20.h),
                  TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                    ),
                    controller: nameController,
                  ),
                  TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    controller: emailController,
                  ),
                  TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'Mobile number',
                      border: OutlineInputBorder(),
                    ),
                    controller: mobileController,
                  ),
                  TextField(
                    maxLines: 3,
                    minLines: 3,
                    decoration: InputDecoration(
                      labelText: 'Message',
                      border: OutlineInputBorder(),
                    ),
                    controller: messageController,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.h),
                    child: ElevatedButton(
                      style: Theme.of(context).elevatedButtonTheme.style,
                      onPressed: () {
                        if (nameController.text.isNotEmpty &&
                                (emailController.text.isNotEmpty ||
                                    mobileController.text.isNotEmpty) ) {
                          submitToGoogleForm(
                            name: nameController.text,
                            email: emailController.text,
                            mobile: mobileController.text,
                            message: messageController.text,
                          );
                          ScaffoldMessenger.of(context).showSnackBar(
                             SnackBar(
                              content: Text('Sent',style: Theme.of(context).textTheme.labelMedium,),
                               backgroundColor: Theme.of(context).primaryColor,
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: Theme.of(context).primaryColor,
                              content: Text('Please fill name and contact details',style: Theme.of(context).textTheme.labelMedium,),
                            ),
                          );
                        }
                      },
                      child: const Text(
                        'Let\'s Talk',
                        style: TextStyle(decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  void submitToGoogleForm({
    required String name,
    required String message,
    required String email,
    required String mobile,
  }) async {
    FormObj form = FormObj(name, email, message, mobile);
    Controller controller = Controller((String status) {
      print(status);
    });
    controller.submitForm(form);
  }
}
