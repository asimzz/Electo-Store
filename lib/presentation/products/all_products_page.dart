import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/product_watch/product_watcher_bloc.dart';
import '../../injection.dart';
import 'widget/all_products_view.dart';

class AllProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return getIt<ProductWatcherBloc>()
              ..add(
                const ProductWatcherEvent.watchProducts(),
              );
          },
        ),
      ],
      child: AllProductsView(),
    );
  }
}
