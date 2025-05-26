import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:speedev_ui/src/core/base/base_view_model.dart';

class BaseView<T extends BaseViewModel> extends StatefulWidget {
  const BaseView({super.key, required this.viewModel, required this.builder, this.onInit, this.onDispose});
  final T viewModel;
  final Widget Function(BuildContext context, T viewModel) builder;
  final Function(BuildContext context, T viewModel)? onInit;
  final Function(BuildContext context, T viewModel)? onDispose;

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  late BaseViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = widget.viewModel;
    widget.onInit?.call(context, viewModel);
  }

  @override
  void dispose() {
    widget.onDispose?.call(context, viewModel);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: viewModel,
      child: widget.builder(context, viewModel),
    );
  }
}
