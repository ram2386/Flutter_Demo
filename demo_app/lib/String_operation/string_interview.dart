import 'package:flutter/material.dart';
import '../Utilities/snackbar.dart';

void findDuplicateNo(BuildContext context, List<int>? numbers) {
  if (numbers == null || numbers.isEmpty) {
    showSnackBar(context, 'No numbers provided.');
    return;
  }

  final duplicates = <int>{};
  final seen = <int>{};

  for (var number in numbers) {
    if (!seen.add(number)) {
      duplicates.add(number);
    }
  }

  showSnackBar(
    context,
    duplicates.isEmpty
        ? 'No duplicate numbers found.'
        : 'Duplicate Numbers: ${duplicates.join(', ')}',
  );
}

void showCountOfEachCharacter(BuildContext context, String name) {
  if (name.isEmpty) {
    showSnackBar(context, 'Name is Empty');
    return;
  }

  final charCount = <String, int>{};

  for (var char in name.split('')) {
    charCount[char] = (charCount[char] ?? 0) + 1;
  }

  final result = charCount.entries
      .map((entry) => '${entry.key}: ${entry.value}')
      .join(', ');

  showSnackBar(context, '($result)');
}
