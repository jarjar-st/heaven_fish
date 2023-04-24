import 'package:fluro/fluro.dart';
import 'package:heaven_fish/providers/page_provider.dart';
import 'package:heaven_fish/ui/pages/home_page.dart';
import 'package:provider/provider.dart';

final homeHandler = Handler(handlerFunc: (context, params) {
  final page = params['page']!.first;
  if (page != '/') {
    final pageProvider = Provider.of<PageProvider>(context!, listen: false);
    pageProvider.createScrollController(page);

    return const HomePage();
  }
});
