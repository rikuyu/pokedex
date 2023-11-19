import 'package:flutter/material.dart';

abstract class PagingItem {
  String get id;

  bool get hasMore;

  bool get isLoading;

  bool get isError;
}

Widget handleResponse(PagingItem res, Widget successWidget) {
  if (res.isError) {
    return const Center(child: Text("Error"));
  }

  if (res.isLoading && !res.hasMore) {
    return const Center(child: CircularProgressIndicator());
  }

  return successWidget;
}
