import 'package:flutter/material.dart';
import 'package:rental/widgets/custom_btn.dart';
import 'package:rental/widgets/default_appBar.dart';

import 'components/dot_indicator.dart';
import 'components/formpage_one.dart';
import 'components/formpage_three.dart';
import 'components/formpage_two.dart';

class CreateSpace extends StatefulWidget {
  const CreateSpace({Key key}) : super(key: key);

  @override
  _CreateSpaceState createState() => _CreateSpaceState();
}

class _CreateSpaceState extends State<CreateSpace>
    with AutomaticKeepAliveClientMixin<CreateSpace> {
  int currentIndex = 0;
  PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: currentIndex);
  }

  List<Widget> formPages = [
    FormPage1(),
    FormPage2(),
    FormPage3(),
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: DefaultAppBar(
        titleText: 'Create New Space',
      ),
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: controller,
              physics: ClampingScrollPhysics(),
              onPageChanged: (index) => {
                // print(index),
                setState(() {
                  currentIndex = index;
                })

              },
              itemCount: formPages.length,
              itemBuilder: (context, index) => formPages[index],
            ),
            Visibility(
                visible: currentIndex == formPages.length - 1 ? true : false,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: DefaultButton(
                    padding: 15,
                    press: () {},
                    text: 'Submit',
                  ),
                )),
            DotIndicator(currentIndex: currentIndex)
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}






