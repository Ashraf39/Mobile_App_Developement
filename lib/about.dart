import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://scontent.fdac134-1.fna.fbcdn.net/v/t39.30808-6/385778700_3573939949496170_7503353219122083511_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=a2f6c7&_nc_eui2=AeE6chhq6uSRzmthVjRSuRbLcuHuBtpJbrFy4e4G2klusbj7g0ZHaIbIrRXfCYEv_MKXONTYQayG_9MhN62lyLk0&_nc_ohc=8KWTWTALwMgAX_XNXHr&_nc_ht=scontent.fdac134-1.fna&oh=00_AfDszZRVGlLy_JOiHhxS9fO7Bx-oSeTWGM_ec-r8-23G8Q&oe=651FA04A'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Ashraf Bhuiyan',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6.0),
            const Text(
              'About Me:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Mobile App Developer\nProgrammer\nTraveller',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    context: context,
                    builder: (context) {
                      return const Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: NetworkImage(
                                  'https://scontent.fdac151-1.fna.fbcdn.net/v/t39.30808-6/242257019_10158695302027203_6143676823452415142_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=a2f6c7&_nc_eui2=AeGUwrMD4bKvnV_cmB6Jq9jM_EobJss2eiH8ShsmyzZ6IYWwkTOmRvL-ARGLxALdKGOTIea5d7gjsijfDdarZT1y&_nc_ohc=QOMcgSYullMAX9700K0&_nc_ht=scontent.fdac151-1.fna&oh=00_AfCvgga348DtiLhbUKqZTST1p_yghoGJz-cfyfC_JNGKkA&oe=651DC14D'),
                            ),
                            title: Text(
                              'Daffodil International University',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('B.Sc in CSE'),
                          ),
                          Divider(
                            height: 10,
                            thickness: 1,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/en/5/5d/Logo_of_DRMC.png'),
                            ),
                            title: Text(
                              'Dhaka Residential Model College',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('HSC : 2019'),
                          ),
                          Divider(
                            height: 10,
                            thickness: 1,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 20.0,
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/en/5/5d/Logo_of_DRMC.png'),
                            ),
                            title: Text(
                              'Dhaka Residential Model College',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text('SSC : 2017'),
                          ),
                        ],
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlueAccent, // Background color
                onPrimary: Colors.white, // Text color
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Rounded corners
                ),
              ),
              child: const Text(
                'Education',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Contact Me:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            const Text(
              'ashraf15-3950@diu.edu.bd\n+8801762551439',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
