import 'package:flutter/material.dart';

class RouteErrorScreen extends StatelessWidget {
  final String errorMsg;
  const RouteErrorScreen({super.key, required this.errorMsg});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Esta pagina no existe'));
  }
}
