import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Search City',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: TextField(
            onSubmitted: (value){
              
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 16,
              ),
              labelText: 'search',
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              hintText: 'Enter a city name',
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
