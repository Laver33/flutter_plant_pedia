import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_app/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RecordScreen extends ConsumerStatefulWidget {
  const RecordScreen({super.key});

  @override
  ConsumerState<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends ConsumerState<RecordScreen> {

  TextEditingController _textController = TextEditingController();

  final _storageKey = 'notebook_text';
  
  @override
  void initState() {
    super.initState();
    _loadText(); 
  }

  void _loadText() async {
    final cash = await SharedPreferences.getInstance();

    final savedText = cash.getString(_storageKey);

    setState(() {
      _textController.text = savedText ?? '';
    });
  }

  void _saveText() async {
    final text = _textController.text;
    final cash = await SharedPreferences.getInstance();
    await cash.setString(_storageKey, text); 
  }

  @override
  Widget build(BuildContext context) {

    final localizations = ref.watch(localizationProvider);
  
    return  Scaffold(
      appBar: AppBar(
        title: Text(localizations.sectionsTitles[2]),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            maxLines: null,
            expands: true,
            textAlignVertical: TextAlignVertical.top,
            controller: _textController,

            onChanged: (text) {
              _saveText();
            },
          ),
          ),
      ),
    );

  }
    @override
  void dispose() {
    _textController.dispose(); 
    super.dispose();
  }
}


