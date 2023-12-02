// Flutter imports:
import 'package:flutter/material.dart';

class NewsSearchDelegate extends SearchDelegate<String?> {
  static const suggestions = [
    'SpaceX',
    'Starship',
    'Starbase',
    'Starlink',
    'NASA',
    'ISS',
    'FAA',
    'FCC',
    'Blue Origin',
    'Virgin Galactic',
    'Rocket Lab',
    'Astra',
    'Mars',
    'Moon',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear_rounded),
        onPressed: () => query = '',
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_rounded),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestions = NewsSearchDelegate.suggestions
        .where((suggestion) => suggestion.toLowerCase().contains(query))
        .toList();

    if (query.isNotEmpty) {
      suggestions.insert(0, query);
    }

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () => close(context, suggestion),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = NewsSearchDelegate.suggestions
        .where((suggestion) => suggestion.toLowerCase().contains(query))
        .toList();

    if (query.isNotEmpty) {
      suggestions.insert(0, query);
    }

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () => close(context, suggestion),
        );
      },
    );
  }
}
