import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:newproject/Provider/new/model.dart';
import 'package:newproject/Provider/new/service.dart';

abstract class PostState {}

class InitialState extends PostState {}

class LoadingState extends PostState {}

class LoadedState extends PostState {
  final List<ApiModel> postList;

  LoadedState({required this.postList});
}

class ErrorState extends PostState {
  final String error;

  ErrorState({required this.error});
}

class PostNotifier extends StateNotifier<PostState> {
  PostNotifier() : super(InitialState());

  ApiServices apiCall = ApiServices();

  fetchdata() async {
    try {
      state = LoadingState();
      List<ApiModel> posts = await apiCall.getPost();
      state = LoadedState(postList: posts);
    } catch (e) {
      state = ErrorState(error: e.toString());
    }
  }
}

final demoStateProvider =
    StateNotifierProvider<PostNotifier, PostState>((ref) => PostNotifier());
