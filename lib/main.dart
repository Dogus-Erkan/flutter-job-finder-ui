import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme_styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData.light(),
      theme: ThemeData.light(),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.menu, color: Colors.black),
                    onPressed: () => print('pressed')),
                Text(
                  'Hello John, Find your dream job',
                  style: ThemeStyles.title,
                ),
                SizedBox(height: 16.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.search,
                                  color: Colors.grey, size: 16.0),
                              SizedBox(width: 8.0),
                              Expanded(
                                child: TextFormField(
                                  controller: _searchController,
                                  keyboardType: TextInputType.text,
                                  cursorColor: Colors.blue,
                                  style: GoogleFonts.nunitoSans(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration.collapsed(
                                    hintText: 'Search',
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Container(
                      width: 32.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.withOpacity(0.05),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.sort,
                          color: Colors.black,
                          size: 16.0,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: <Widget>[
                    _buildCategory('Product'),
                    SizedBox(width: 16.0),
                    _buildCategory('Design'),
                    SizedBox(width: 16.0),
                    _buildCategory('Google'),
                    SizedBox(width: 16.0),
                  ],
                ),
                SizedBox(height: 16.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 16.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Popular Jobs',
                              style: ThemeStyles.headline1,
                            ),
                            Spacer(),
                            Text(
                              'Show All',
                              style: ThemeStyles.showMore,
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Container(
                          height: 150,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  openJobBottomSheet();
                                },
                                child: _buildJob(
                                  jobTitle: 'UX/UI Design',
                                  city: 'Moutain View, California',
                                  country: 'United States',
                                  company: 'Google',
                                  imageName: 'google.png',
                                ),
                              ),
                              SizedBox(width: 16.0),
                              GestureDetector(
                                onTap: () {
                                  openJobBottomSheet();
                                },
                                child: _buildJob(
                                  jobTitle: 'React developer',
                                  city: 'Menlo Park, California',
                                  country: 'United States',
                                  company: 'Facebook',
                                  imageName: 'facebook.png',
                                ),
                              ),
                              SizedBox(width: 16.0),
                              GestureDetector(
                                onTap: () {
                                  openJobBottomSheet();
                                },
                                child: _buildJob(
                                  jobTitle: 'System engineer',
                                  city: 'Redmond, Washington',
                                  country: 'United States',
                                  company: 'Microsoft',
                                  imageName: 'microsoft.png',
                                ),
                              ),
                              SizedBox(width: 16.0),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  children: <Widget>[
                    Text(
                      'Job Category',
                      style: GoogleFonts.nunitoSans(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Show All',
                      style: GoogleFonts.nunitoSans(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      _buildJobCategory(
                          "Engineering", Colors.teal[50], Colors.teal),
                      SizedBox(width: 8.0),
                      _buildJobCategory("Design", Colors.blue[50], Colors.blue),
                      SizedBox(width: 8.0),
                      _buildJobCategory(
                          "Development", Colors.red[50], Colors.red),
                      SizedBox(width: 8.0),
                      _buildJobCategory(
                          "Sales", Colors.orange[50], Colors.orange),
                      SizedBox(width: 8.0),
                      _buildJobCategory(
                          "Marketing", Colors.purple[50], Colors.purple),
                      SizedBox(width: 8.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _buildCategory(String name) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          name,
          style: GoogleFonts.nunitoSans(
            color: Colors.blueGrey,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }

  Container _buildJob({
    @required String jobTitle,
    @required String city,
    @required String country,
    @required String company,
    @required String imageName,
  }) {
    return Container(
      width: 275,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image.asset(
                      'assets/images/' + imageName,
                      height: 24.0,
                      width: 24.0,
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                  size: 12.0,
                ),
              ],
            ),
            SizedBox(height: 4.0),
            Text(company, style: ThemeStyles.company),
            SizedBox(height: 4.0),
            Text(jobTitle, style: ThemeStyles.jobTitle),
            SizedBox(height: 4.0),
            // Text('Mountain View, California', style: ThemeStyles.localisation),
            Text(city, style: ThemeStyles.localisation),
            SizedBox(height: 4.0),
            Text(country, style: ThemeStyles.localisation),
            SizedBox(height: 4.0),
          ],
        ),
      ),
    );
  }

  Container _buildJobCategory(String name, Color bgColor, Color fgColor) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Text(
            name,
            style: GoogleFonts.nunitoSans(
              color: fgColor,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  void openJobBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              height: 550,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
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
                      ),
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Image.asset(
                            'assets/images/google.png',
                            height: 36.0,
                            width: 36.0,
                          ),
                        ),
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
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Center(
                              child: Text(
                                'Description',
                                style: ThemeStyles.jobDescription,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Center(
                              child: Text(
                                'Company',
                                style: ThemeStyles.jobDescription
                                    .copyWith(color: Colors.black45),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Center(
                              child: Text(
                                'Reviews',
                                style: ThemeStyles.jobDescription
                                    .copyWith(color: Colors.black45),
                              ),
                            ),
                          ),
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 3.0,
                              ),
                            ),
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 3.0,
                              ),
                            ),
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
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
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
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
