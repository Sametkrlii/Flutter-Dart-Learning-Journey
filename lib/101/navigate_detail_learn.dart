import 'package:flutter/material.dart';

class NavigateDetailView extends StatefulWidget {
  const NavigateDetailView({super.key,  this.isOkey=false});

  final bool isOkey;

  @override
  State<NavigateDetailView> createState() => _NavigateDetailViewState();
}

class _NavigateDetailViewState extends State<NavigateDetailView> {
  Color checkbgColor = Colors.green;
  Color checkColor = Colors.white;
  Color denybgColor = Colors.red;
  Color denyColor = Colors.white;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ModalRoute.of(context)?.settings.arguments;
  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
          style: ButtonStyle(backgroundColor: widget.isOkey ? WidgetStatePropertyAll(denybgColor): WidgetStatePropertyAll(checkbgColor)),
          onPressed: () {
            Navigator.of(context).pop(!widget.isOkey);
          },
          icon: Icon(color: widget.isOkey ? denyColor:checkColor, widget.isOkey ? Icons.cancel_outlined:Icons.check),
          label: widget.isOkey ? Text("Red", style: TextStyle(color: denyColor)):Text("Onayla", style: TextStyle(color: checkColor)),
        ),
      ),
    );
  }
}
