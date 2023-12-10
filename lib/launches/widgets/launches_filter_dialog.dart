// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:starcat/constants.dart';
import 'package:starcat/launches/launches.dart';

class LaunchesFilterDialog extends StatefulWidget {
  const LaunchesFilterDialog({
    super.key,
  });

  @override
  State<LaunchesFilterDialog> createState() => _LaunchesFilterDialogState();
}

class _LaunchesFilterDialogState extends State<LaunchesFilterDialog> {
  TextEditingController searchController = TextEditingController();
  bool shouldShowClearButton = false;

  Set<LaunchProviders> selectedLaunchProviders = {};

  @override
  void initState() {
    super.initState();

    final filter = context.read<LaunchesBloc>().state.filter;
    selectedLaunchProviders = filter.selectedLaunchProviders;

    searchController
      ..text = filter.searchQuery ?? ''
      ..addListener(() {
        if (searchController.text.isNotEmpty) {
          if (!shouldShowClearButton) {
            setState(() => shouldShowClearButton = true);
          }
        } else {
          if (shouldShowClearButton) {
            setState(() => shouldShowClearButton = false);
          }
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Filter Launches'),
          leading: IconButton(
            icon: const Icon(Icons.close_rounded),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            TextButton(
              onPressed: () {
                context.read<LaunchesBloc>().add(
                      LaunchesFilterChanged(
                        newFilter: LaunchesFilter(
                          searchQuery: searchController.text,
                          selectedLaunchProviders: selectedLaunchProviders,
                        ),
                      ),
                    );

                Navigator.pop(context);
              },
              child: const Text('Apply'),
            ),
          ],
        ),
        body: Padding(
          padding: kBodyPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(
                controller: searchController,
                hintText: 'Search',
                leading: const Icon(Icons.search_rounded),
                trailing: shouldShowClearButton
                    ? [
                        IconButton(
                          icon: const Icon(Icons.clear_rounded),
                          onPressed: () => searchController.clear(),
                        ),
                      ]
                    : null,
              ),
              const SizedBox(height: kListSpacing),
              Text(
                'Launch Providers',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
              const SizedBox(height: kListSpacing / 2),
              Wrap(
                spacing: kListSpacing,
                children: LaunchProviders.values
                    .map(
                      (provider) => FilterChip(
                        label: Text(provider.name),
                        selected: selectedLaunchProviders.contains(provider),
                        onSelected: (selected) {
                          setState(() {
                            if (selected) {
                              selectedLaunchProviders.add(provider);
                            } else {
                              selectedLaunchProviders.remove(provider);
                            }
                          });
                        },
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
