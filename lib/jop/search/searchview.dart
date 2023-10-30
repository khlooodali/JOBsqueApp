import 'package:findjop/jop/search/searchitem.dart';
import 'package:flutter/material.dart';

class Searching extends StatelessWidget {
  const Searching({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Search Example'),
        ),
        body: const Center(
          child: SearchWidget(),
        ),
      ),
    );
  }
}

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final TextEditingController _searchController = TextEditingController();
  List<dynamic> _searchResults = [];

  void _performSearch() async {
    final query = _searchController.text;

    if (query.isNotEmpty) {
      try {
        final results = await searchItems(query);
        setState(() {
          _searchResults = results;
        });
      } catch (e) {
        print('Search failed: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _searchController,
          decoration: const InputDecoration(labelText: 'Search'),
        ),
        ElevatedButton(
          onPressed: _performSearch,
          child: const Text('Search'),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _searchResults.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_searchResults[index]['name']),
              );
            },
          ),
        ),
      ],
    );
  }
}
