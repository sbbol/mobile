import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sbolb_assistant_mobile/core/constants/app_colors.dart';

import 'navigation_cubit.dart';

import '../constants/app_strings.dart';

import '../../features/home/presentation/pages/home_page.dart';
import '../../features/info/presentation/pages/info_page.dart';
import '../../features/payments/presentation/pages/payments_page.dart';
import '../../features/products/presentation/pages/products_page.dart';
import '../../features/documents/presentation/pages/documents_page.dart';

class NavigationShell extends StatelessWidget {
  const NavigationShell({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: IndexedStack(
            index: currentIndex,
            children: const [
              HomePage(),
              DocumentsPage(),
              PaymentsPage(),
              ProductsPage(),
              InfoPage()
            ],
          ),
          bottomNavigationBar: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
                bottom: Radius.circular(8),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.bottomNavBackground,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 12,
                      offset: const Offset(0, -2),
                    ),
                  ],
                ),
                child: BottomNavigationBar(
                  currentIndex: currentIndex,
                  onTap: (index) =>
                      context.read<NavigationCubit>().goToTab(index),
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: AppStrings.tabHome,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: AppStrings.tabDocuments,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: AppStrings.tabCreate,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: AppStrings.tabProducts,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: AppStrings.tabInfo,
                    ),
                  ],
                ),),)
        );
      },
    );
  }
}