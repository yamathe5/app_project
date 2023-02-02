import 'package:riverpod/riverpod.dart';

final DashboardControllerProvider =
    StateNotifierProvider<DashboardController, int>((ref) {
  return DashboardController(0);
});

class DashboardController extends StateNotifier<int> {
  DashboardController(super.state);

  void setPosition(state) {
    state = state;
  }
}
