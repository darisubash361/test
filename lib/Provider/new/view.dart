import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newproject/Provider/new/poststate.dart';

class view extends ConsumerWidget {
  const view({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Calffl'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final state = ref.watch(demoStateProvider);
          if (state is InitialState) {
            return const Center(
              child: Text('Press button to fetch data'),
            );
          }
          if (state is LoadingState) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is ErrorState) {
            return Center(
              child: Text(state.error),
            );
          }

          if (state is LoadedState) {
            return ListView.builder(
              itemCount: state.postList.length,
              itemBuilder: ((context, index) {
                var post = state.postList[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(
                        post.id.toString(),
                      ),
                    ),
                    title: Text(state.postList[index].title),
                    subtitle: Text(post.description),
                  ),
                );
              }),
            );
          }
          return Center(child: const Text('No data'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(demoStateProvider.notifier).fetchdata();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
