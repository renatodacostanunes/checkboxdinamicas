import 'package:dynamic_checkboxes/checkbox_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const MainView(),
    );
  }
}

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final CheckboxStore store = CheckboxStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Column(
          children: const [
            Text('Checkboxes Dinâmicas'),
            Text(
              '@renatodacostanunes',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 10),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Observer(
            builder: (context) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    textAlign: TextAlign.center,
                    "Escolha seu esporte favorito:",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 10),
                  Column(
                      children: store.checkboxList.map((element) {
                    return CheckboxListTile(
                        activeColor: Colors.deepPurpleAccent,
                        checkboxShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        value: element.isChecked,
                        title: Text(element.name),
                        onChanged: (val) {
                          store.favoriteCategory(element, val);
                        });
                  }).toList()),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 10),
                  Wrap(
                    children: store.checkboxList.map((element) {
                      if (element.isChecked == true) {
                        return Card(
                          elevation: 3,
                          color: Colors.deepPurpleAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  element.name,
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () =>
                                      store.favoriteCategory(element, false),
                                  child: const Icon(
                                    Icons.delete_forever_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                      return Container();
                    }).toList(),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
