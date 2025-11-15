import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_app/main.dart';


class Searchscreen extends ConsumerStatefulWidget {
  const Searchscreen({super.key});

  @override
  ConsumerState<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends ConsumerState<Searchscreen> {
  @override
  Widget build(BuildContext context) {

    final localizations = ref.watch(localizationProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: localizations.hintTextSerch,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}