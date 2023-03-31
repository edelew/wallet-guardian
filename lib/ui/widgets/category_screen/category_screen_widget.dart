import 'package:flutter/material.dart';
import 'package:wallet_guardian/recourses/category_names.dart';

import '../../../recourses/category.dart';
import '../../../recourses/category_icons.dart';

// final categoryList = {
//   'Проезд': Image.asset(CategoryIcons.driveway),
//   'Развлечения': Image.asset(CategoryIcons.fun),
//   'Спортзал': Image.asset(CategoryIcons.gym),
//   'Путешествия': Image.asset(CategoryIcons.travel),
// };

final categoryList = [
  Category(name: CategoryNames.driveway, icon: CategoryIcons.driveway),
  Category(name: CategoryNames.fun, icon: CategoryIcons.fun),
  Category(name: CategoryNames.gym, icon: CategoryIcons.gym),
  Category(name: CategoryNames.travel, icon: CategoryIcons.travel),
];

class CategoryScreenWidget extends StatelessWidget {
  const CategoryScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: _AppBarWidget(),
      ),
      backgroundColor: Colors.white,
      body: _CategoryListWidget(
        categoryList: categoryList,
      ),
    );
  }
}

class _AppBarWidget extends StatelessWidget {
  const _AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Выбрать категорию"),
      toolbarHeight: 80,
      // elevation: 0,
      // shape: const Border(
      //   bottom: BorderSide(color: Colors.black, width: 2),
      // ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    );
  }
}

class _CategoryListWidget extends StatelessWidget {
  final List<Category> categoryList;
  const _CategoryListWidget({Key? key, required this.categoryList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categoryList.length,
      itemBuilder: (context, index) {
        final currentCategory = categoryList[index];
        return _CategoryListRowWidget(
          categoryName: currentCategory.name,
          categoryIcon: currentCategory.icon,
        );
      },
    );
  }
}

class _CategoryListRowWidget extends StatelessWidget {
  final String categoryName;
  final Image categoryIcon;
  const _CategoryListRowWidget(
      {Key? key, required this.categoryName, required this.categoryIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 40,
        child: categoryIcon,
      ),
      title: Text(categoryName),
      trailing: Checkbox(
        onChanged: (value) {},
        value: false,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    );
  }
}
