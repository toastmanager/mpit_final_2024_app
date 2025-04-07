import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mpit_final_2024_app/core/constants/icon_paths.dart';
import 'package:mpit_final_2024_app/core/routes/router.gr.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        ProfileRoute(),
        HelpRequestsRoute(),
        ChatbotRoute(),
        ReferencesRoute(),
        VacanciesRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        final colors = ColorScheme.of(context);
        return Scaffold(
          appBar:
              tabsRouter.activeIndex == 3
                  ? AppBar(
                    actions: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications_outlined),
                      ),
                    ],
                  )
                  : null,
          body: SafeArea(child: child),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            selectedItemColor: colors.primary,
            unselectedItemColor: colors.onSurface,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                label: 'Главная',
                activeIcon: SvgPicture.asset(
                  IconPaths.homeLineFilled,
                  colorFilter: ColorFilter.mode(
                    colors.primary,
                    BlendMode.srcIn,
                  ),
                ),
                icon: SvgPicture.asset(IconPaths.homeLine),
              ),
              BottomNavigationBarItem(
                label: 'Заявки',
                activeIcon: SvgPicture.asset(
                  IconPaths.fileLineFilled,
                  colorFilter: ColorFilter.mode(
                    colors.primary,
                    BlendMode.srcIn,
                  ),
                ),
                icon: SvgPicture.asset(IconPaths.fileLine),
              ),
              BottomNavigationBarItem(
                label: 'Чат-бот',
                activeIcon: SvgPicture.asset(
                  IconPaths.robotLineFilled,
                  colorFilter: ColorFilter.mode(
                    colors.primary,
                    BlendMode.srcIn,
                  ),
                ),
                icon: SvgPicture.asset(IconPaths.robotLine),
              ),
              BottomNavigationBarItem(
                label: 'Справочник',
                activeIcon: SvgPicture.asset(
                  IconPaths.checkboxListDetailLineFilled,
                  colorFilter: ColorFilter.mode(
                    colors.primary,
                    BlendMode.srcIn,
                  ),
                ),
                icon: SvgPicture.asset(IconPaths.checkboxListDetailLine),
              ),
              BottomNavigationBarItem(
                label: 'Вакансии',
                activeIcon: SvgPicture.asset(
                  IconPaths.briefcaseLineFilled,
                  colorFilter: ColorFilter.mode(
                    colors.primary,
                    BlendMode.srcIn,
                  ),
                ),
                icon: SvgPicture.asset(IconPaths.briefcaseLine),
              ),
            ],
          ),
        );
      },
    );
  }
}
