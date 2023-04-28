import 'package:flutter/material.dart';
import 'package:heaven_fish/providers/page_provider.dart';
import 'package:heaven_fish/router/router.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => PageProvider())],
        child: const MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Flurorouter.configureRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Heaven Fish',
      theme: ThemeData(fontFamily: 'Aleo'),
      initialRoute: '/home',
      onGenerateRoute: Flurorouter.router.generator,
    );
  }
}
