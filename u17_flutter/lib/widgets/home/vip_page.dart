import 'package:flutter/material.dart';

class VipPage extends StatefulWidget {
  const VipPage({Key? key}) : super(key: key);

  @override
  State<VipPage> createState() => _VipPageState();
}

class _VipPageState extends State<VipPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("VIP"),
      ),
    );
  }
}
