import 'package:flutter/material.dart';

Drawer myDrawer = Drawer(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
                onPressed: () {},
                child: const Text(
                  'Language',
                )),
            const Text(
              'English',
            ),
          ],
        ),
      ],
    ),
  ),
);
