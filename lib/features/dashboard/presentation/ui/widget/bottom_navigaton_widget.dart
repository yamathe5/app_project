import 'package:app_project/features/dashboard/presentation/controller/dashborad_controller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomNavigationWidget extends ConsumerStatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  ConsumerState<BottomNavigationWidget> createState() =>
      _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState
    extends ConsumerState<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    final position = ref.watch(DashboardControllerProvider);
    return BottomNavigationBar(
      currentIndex: position,
      onTap: (value) => _onTap(value),
      items: const [
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_work),
            label: 'Home'),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.shopify),
            icon: Icon(Icons.shopping_bag),
            label: 'Cart'),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.settings),
            icon: Icon(Icons.settings_applications),
            label: 'Settings'),
      ],
    );
  }

  void _onTap(int index) {
    ref.read(DashboardControllerProvider.notifier).setPosition(index);
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/cart');
        break;
      case 2:
        context.go('/settings');
        break;
      default:
    }
  }
}
