import 'package:flutter/material.dart';
import 'package:u17_flutter/api/home_request.dart';

class BookShelfPage extends StatefulWidget {
  const BookShelfPage({Key? key}) : super(key: key);

  @override
  State<BookShelfPage> createState() => _BookShelfPageState();
}

class _BookShelfPageState extends State<BookShelfPage> {

  HomeRequest homeReq = HomeRequest();

  @override
  void initState() {
    super.initState();

    homeReq.getBoutiqueList(1).then((result) {
      print('-----------');
      print(result);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
