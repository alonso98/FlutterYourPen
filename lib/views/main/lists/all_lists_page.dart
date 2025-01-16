import 'package:flutter/material.dart';
import 'package:flutter_gradient_button/flutter_gradient_button.dart';
import 'package:provider/provider.dart';
import 'package:yourpen_1/controls/gradient_button.dart';
import 'package:yourpen_1/view_models/lists/all_lists_viewmodel.dart';

class ListsPage extends StatelessWidget {
  const ListsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final listsViewModel = Provider.of<AllListsViewmodel>(context);
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                child: ListView.separated(
                  itemCount: 15,
                  itemBuilder: (context, index) =>
                      buildListTile(context, index),
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 12,
                    );
                  },
                )
              )
            )
      ],
    );
  }

  Widget buildListTile(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
      child: ListTile(
        title: const Text("Nakup", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
        subtitle: const Text("02.06 | 12 items", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),),
        leading: Icon(Icons.list),
        trailing: InkWell(
          onTap: () => {},
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [Color(0xff9D68E4), Color(0xff8545D8)])
            ),
            child: const Icon(Icons.arrow_forward, color: Colors.white, size: 20,),
          ),
        ),
      ),
    );
  }
}
