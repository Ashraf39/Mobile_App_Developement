import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: portfolioItems.length,
        itemBuilder: (context, index) {
          final item = portfolioItems[index];
          return Card(
            margin: EdgeInsets.all(16.0),
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(item.imageUrl),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF333333), // Custom text color
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        item.description,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFF666666), // Custom text color
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement navigation to the portfolio item details page
                      // You can use Navigator.push to navigate to a details page.
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black54, // Custom button color
                      onPrimary:
                          Colors.white, // Custom text color for the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    child: Text('Read More'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class PortfolioItem {
  final String title;
  final String description;
  final String imageUrl;

  PortfolioItem({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

final List<PortfolioItem> portfolioItems = [
  PortfolioItem(
    title: 'Android App',
    description: 'This is a portfolio app developed with flutter. The project has many sections and they are "About","Skills","Work","Experiences" and "Portfolio".',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8gOxEhkBM5TBC-IxHxvpMWUctk7MIhCp1UA&usqp=CAU', // Replace with your image URL
  ),
  PortfolioItem(
    title: 'Electricity Billing System',
    description: 'This is a simple Java project which will take as input the client id and then it will calculate how much units of electricity he has used and how much money he has to pay.',
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZDYgV1zjkJrF05NlGqfEnzFnql_YLw3IBNw&usqp=CAU', // Replace with your image URL
  ),
  // Add more portfolio items with image URLs as needed
];
