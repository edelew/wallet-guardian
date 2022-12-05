import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet_guardian/ui/navigation/main_navigation.dart';

class FormScreenWidget extends StatelessWidget {
  const FormScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: _AppBarWidget(),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Категория",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              onTap: () => Navigator.of(context)
                  .pushNamed(MainNavigationRouteName.categoryScreen),
              keyboardType: TextInputType.none,
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.arrow_drop_down),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Сумма",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly]),
          ],
        ),
      ),
    );
  }
}

class _AppBarWidget extends StatelessWidget {
  const _AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Добавить карту расхода"),
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
