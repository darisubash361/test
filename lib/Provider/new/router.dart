import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newproject/Login.dart';
import 'package:newproject/Provider/new/page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return Pandit();
      },
    ),
    GoRoute(
      path: '/pandit1',
      builder: (context, state) {
        return inputField();
      },
    ),
    GoRoute(
        path: '/pandit2',
        builder: (context, state) {
          return example();
        },
        routes: [
          GoRoute(
              path: 'pandit3',
              builder: (context, state) {
                return inputField();
              })
        ]),
  ],
  errorBuilder: (context, state) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          context.go('/');
        },
        child: Text('No page Found'),
      )),
    );
  },
);

home() {}

example() {}
