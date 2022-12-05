import 'package:flutter/material.dart';

class CategoryScreenWidget extends StatelessWidget {
  const CategoryScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: _AppBarWidget(),
      ),
      backgroundColor: Colors.white,
      body: _CategoryListWidget(),
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
  const _CategoryListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => const _CategoryListRowWidget(),
    );
  }
}

class _CategoryListRowWidget extends StatelessWidget {
  const _CategoryListRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 40,
        child: Image.asset("icons/light_icon.png"),
      ),
      title: const Text("Категория"),
      trailing: Checkbox(
        onChanged: (value) {},
        value: false,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    );
  }
}
