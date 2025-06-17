import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNav extends StatelessWidget {
  final Widget child;
  const BottomNav({super.key, required this.child});

  int _calculateIndex(String location) {
    if (location.startsWith('/categories')) return 1;
    if (location.startsWith('/cart')) return 2;
    if (location.startsWith('/favorites')) return 3;
    if (location.startsWith('/profile')) return 4;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    final currentIndex = _calculateIndex(location);

    return Scaffold(
      body: child,
      bottomNavigationBar: currentIndex == 2
          ? const SizedBox.shrink()
          : BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              currentIndex: currentIndex,
              onTap: (index) {
                switch (index) {
                  case 0:
                    context.go('/');
                    break;
                  case 1:
                    context.go('/categories');
                    break;
                  case 2:
                    context.go('/cart');
                    break;
                  case 3:
                    context.go('/favorites');
                    break;
                  case 4:
                    context.go('/profile');
                    break;
                }
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ''),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag),
                  label: '',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
              ],
            ),
    );
  }
}
