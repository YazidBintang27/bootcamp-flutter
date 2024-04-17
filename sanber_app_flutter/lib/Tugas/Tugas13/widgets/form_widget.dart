import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  final String? label;
  final IconData? icon;
  final TextEditingController? controller;
  const FormWidget({super.key, this.label, this.icon, this.controller});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
            prefixIcon: Icon(
              widget.icon!,
              color: Colors.grey.shade500,
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
            label: Text(
              widget.label!,
              style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
            )),
      ),
    );
  }
}
