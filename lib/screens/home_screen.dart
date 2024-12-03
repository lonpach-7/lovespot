import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> users = [
    {
      'name': 'John Doe',
      'imageUrl':
          'https://example.com/johndoe.jpg', // Replace with actual image URL
      'age': '28'
    },
    {
      'name': 'Jane Smith',
      'imageUrl': 'https://example.com/janesmith.jpg',
      'age': '25'
    },
    {
      'name': 'Alice Johnson',
      'imageUrl': 'https://example.com/alicejohnson.jpg',
      'age': '30'
    },
    // Add more users here
  ];

  // Removed `const` because users are initialized with non-constant values
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LoveSpot"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5.0,
              child: ListTile(
                contentPadding: const EdgeInsets.all(12.0),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(users[index]['imageUrl']!),
                  radius: 30.0,
                ),
                title: Text(
                  '${users[index]['name']} (${users[index]['age']})',
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                subtitle: const Text('Swipe right if you like!',
                    style: TextStyle(fontSize: 14.0)),
                onTap: () {
                  // Handle tap, maybe navigate to a profile details screen
                  print('Tapped on ${users[index]['name']}');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
