import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

// class BottomNavBar extends StatelessWidget {
//   const BottomNavBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Get the current route name
//     final currentRoute = ModalRoute.of(context)?.settings.name;

//     return BottomAppBar(
//       shape: const CircularNotchedRectangle(),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           IconButton(
//             icon: const Icon(CupertinoIcons.arrow_left),
//             onPressed: () {
//               // Prevent back navigation on the Home Screen
//               if (Navigator.of(context).canPop() && currentRoute != '/home') {
//                 Navigator.of(context).pop();
//               }
//             },
//           ),
//           IconButton(
//             icon: const Icon(CupertinoIcons.gear),
//             onPressed: () {
//               // Only navigate if not already on the Settings screen
//               if (currentRoute != '/settings') {
//                 Navigator.pushNamed(context, '/settings');
//               }
//             },
//           ),
//           IconButton(
//             icon: const Icon(CupertinoIcons.house_fill),
//             onPressed: () {
//               // Only navigate if not already on the Home screen
//               if (currentRoute != '/home') {
//                 Navigator.pushNamedAndRemoveUntil(
//                   context,
//                   '/home',
//                   (route) => false,
//                 );
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the current route name
    final currentRoute = ModalRoute.of(context)?.settings.name;

    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Back Button
          IconButton(
            icon: const Icon(CupertinoIcons.arrow_left),
            onPressed: () {
              if (Navigator.of(context).canPop() && currentRoute != '/home') {
                Navigator.of(context).pop();
              }
            },
          ),

          // Module Info Button (NEW)
          IconButton(
            icon: const Icon(CupertinoIcons.book_fill),
            onPressed: () {
              if (currentRoute != '/module-info') {
                Navigator.pushNamed(context, '/module-info');
              }
            },
          ),

          // Module Recommendations Button (NEW)
          IconButton(
            icon: const Icon(CupertinoIcons.lightbulb_fill),
            onPressed: () {
              if (currentRoute != '/module-recommendations') {
                Navigator.pushNamed(context, '/module-recommendations');
              }
            },
          ),

          // Settings Button
          IconButton(
            icon: const Icon(CupertinoIcons.gear),
            onPressed: () {
              if (currentRoute != '/settings') {
                Navigator.pushNamed(context, '/settings');
              }
            },
          ),

          // Home Button
          IconButton(
            icon: const Icon(CupertinoIcons.house_fill),
            onPressed: () {
              if (currentRoute != '/home') {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/home',
                  (route) => false,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}