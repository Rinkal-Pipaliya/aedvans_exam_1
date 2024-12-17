import 'package:aedvans_exam_1/provider/home_provider.dart';
import 'package:aedvans_exam_1/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeProvider providerR;
  late HomeProvider providerW;

  @override
  void initState() {
    context.read<HomeProvider>().getCovid();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    providerW = context.watch<HomeProvider>();
    providerR = context.read<HomeProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Country List'),
      ),
      body: ListView.builder(
        itemCount: providerW.model?.data?.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, Routes.detail, arguments: index);
              },
              title: Text("${providerW.model?.data?[index].name}"),
            ),
          );
        },
      ),
    );
  }
}
