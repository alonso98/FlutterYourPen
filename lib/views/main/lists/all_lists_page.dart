import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yourpen_1/view_models/lists/all_lists_viewmodel.dart';

class ListsPage extends StatelessWidget {
  const ListsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final listsViewModel = Provider.of<AllListsViewmodel>(context);
    return const Center(
      child: Text('This is the Lists Page'),
    );
  }

}