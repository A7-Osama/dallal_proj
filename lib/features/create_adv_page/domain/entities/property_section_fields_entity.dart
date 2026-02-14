import 'package:dallal_proj/core/constants/mock_models.dart';
import 'package:flutter/material.dart';

class PropSectFieldEntity {
  final List<String> titles;
  final List<TextEditingController> controllers;
  final List<FocusNode> fNodes;
  final int codeLength;
  final double widthF;
  const PropSectFieldEntity({
    required this.widthF,
    this.codeLength = 4,
    required this.controllers,
    this.titles = kTFModelTitles,
    required this.fNodes,
  });
}
