import 'package:flutter/material.dart';
import 'package:wallet_guardian/ui/navigation/main_navigation.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: _AppBarWidget(),
      ),
      body: Column(
        children: [
          const Expanded(
            child: _MainScreenListWidget(),
          ),
          Container(
            height: 100,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: TextButton(
                    onPressed: () => Navigator.of(context)
                        .pushNamed(MainNavigationRouteName.formScreen),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 16),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Добавить",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Text(
                    "Итого: 1500 Р",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_sharp),
            label: 'Расходы',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: 'Статистика',
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
    );
  }
}

class _AppBarWidget extends StatelessWidget {
  const _AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("6 декабря 2022"),
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

class _MainScreenListWidget extends StatelessWidget {
  const _MainScreenListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const _MainScreenListRowWidget(),
      separatorBuilder: (context, index) => Container(
        height: 2,
        color: Color.fromARGB(255, 239, 236, 236),
      ),
      itemCount: 20,
    );
  }
}

class _MainScreenListRowWidget extends StatelessWidget {
  const _MainScreenListRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 40,
        child: Image.asset("icons/light_icon.png"),
      ),
      title: const Text("Расход"),
      trailing: const Text(
        "700 Р",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    );
  }
}
