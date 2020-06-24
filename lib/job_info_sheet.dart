import 'package:flutter/material.dart';
import 'theme_styles.dart';
import 'widget_extension.dart';

class JobInfoSheet extends StatelessWidget {
  const JobInfoSheet({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        openJobBottomSheet(context);
      },
      child: child,
    );
  }

  void openJobBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          color: Colors.transparent,
          child: Container(
            height: 550,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 24.0,
                    ),
                    Spacer(),
                    Icon(
                      Icons.file_upload,
                      color: Colors.black,
                      size: 24.0,
                    )
                  ],
                ).paddingAll(8.0),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Image.asset(
                      'assets/images/google.png',
                      height: 36.0,
                      width: 36.0,
                    ).paddingAll(50.0),
                  ),
                ),
                SizedBox(height: 4.0),
                Center(
                  child: Text(
                    'Visual Design',
                    style: ThemeStyles.jobTitle,
                  ),
                ),
                SizedBox(height: 4.0),
                Center(
                  child: Text(
                    'Gogle LLC / Mountain View',
                    style: ThemeStyles.localisation,
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                        child: Text(
                          'Description',
                          style: ThemeStyles.jobDescription,
                        ),
                      ).paddingSymetric(horizontal: 8.0),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                        child: Text(
                          'Company',
                          style: ThemeStyles.jobDescription
                              .copyWith(color: Colors.black45),
                        ),
                      ).paddingSymetric(horizontal: 8.0),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                        child: Text(
                          'Reviews',
                          style: ThemeStyles.jobDescription
                              .copyWith(color: Colors.black45),
                        ),
                      ).paddingSymetric(horizontal: 8.0),
                    )
                  ],
                ),
                SizedBox(height: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Minimum Qualification',
                      style: ThemeStyles.bodyHeadline,
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 3.0,
                        ).paddingAll(8.0),
                        SizedBox(width: 16.0),
                        Text(
                          "Bachelor's degree in design or \nequivalent practical experience",
                          style: ThemeStyles.bodyGrey,
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 3.0,
                        ).paddingAll(8.0),
                        SizedBox(width: 16.0),
                        Text(
                          "Experience designing across\nmultiple platforms",
                          style: ThemeStyles.bodyGrey,
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200],
                        offset: Offset(-3, -3),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                            child: Text(
                              'Apply here',
                              style: ThemeStyles.buttonTextLight,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ).paddingAll(16.0),
                )
              ],
            ).paddingAll(8.0),
          ).paddingOnly(top: 8.0),
        );
      },
    );
  }
}
