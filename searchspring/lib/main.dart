import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:searchspring/disp_search.dart';
import 'package:searchspring/loading.dart';
import 'package:searchspring/providers.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: search(),
    );
  }
}

class search extends ConsumerStatefulWidget {
  const search({super.key});

  @override
  ConsumerState<search> createState() => _searchState();
}

class _searchState extends ConsumerState<search> {
  bool dfound = false;
  String city = "";
  final s = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              TextField(
                controller: s,
                onChanged: (value) {
                  setState(() {
                    city = value;
                  });
                },
              ),
              Expanded(
                child: ref.watch(getCity(city)).when(data: (data) {
                  return Text(data.routeName);
                }, error: (error, stk) {
                  return SizedBox();
                  // return const loader();
                },
                    // {
                    //   print("$error , $stk");
                    // },
                    loading: () {
                  if (city != "")
                    return Text("");
                  else if (city == "") {
                    // return const loader();
                    return Text("data");
                  } else {
                    return Text("");
                  }
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
