import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: WorkPage(),
  ));
}
class WorkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: workProjects.length,
        itemBuilder: (context, index) {
          final project = workProjects[index];
          return Card(
            elevation: 4.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              title: Text(
                project.title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                project.description,
                style: TextStyle(fontSize: 16.0),
              ),
              onTap: () {
                // Add your navigation logic or details view here
              },
            ),
          );
        },
      ),
    );
  }
}

class WorkProject {
  final String title;
  final String description;

  WorkProject({
    required this.title,
    required this.description,
  });
}

final List<WorkProject> workProjects = [
  WorkProject(
    title: 'Flutter App',
    description: 'Developed a portfolio app using flutter',
  ),
  WorkProject(
    title: 'Calculator',
    description: 'Developed a Calculator in C Language',
  ),
  WorkProject(
    title: 'Electricity Billing System',
    description: 'Developed an Electricity Billing System using Java',
  ),
  WorkProject(
    title: 'Hospital Management System',
    description: 'Developed a Hospital Management System using Python',
  ),
];
