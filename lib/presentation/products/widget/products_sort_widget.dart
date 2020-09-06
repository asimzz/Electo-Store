import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../application/product_watch/product_watcher_bloc.dart';

class ProductSortView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final dropdownValue = useState(SORT_FIELDS[0]);
    final selectedValue = useState(SORT_TYPES[0]);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              width: 200,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DropdownButton<String>(
                value: dropdownValue.value,
                icon: Icon(Icons.arrow_downward),
                iconSize: 20,
                elevation: 16,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                underline: Divider(
                  color: Color(0xFF123E72),
                ),
                onChanged: (String newValue) {
                  dropdownValue.value = newValue;
                  onChangedSortTypeAndSortField(
                    dropdownValue.value,
                    selectedValue.value,
                    context,
                  );
                },
                items:
                    SORT_FIELDS.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RadioListTile<String>(
                    title: const Text(
                      'Descending',
                      style: TextStyle(fontSize: 12),
                    ),
                    value: SORT_TYPES[0],
                    activeColor: Color(0xFF123E72),
                    groupValue: selectedValue.value,
                    onChanged: (String value) {
                      selectedValue.value = value;
                      onChangedSortTypeAndSortField(
                        dropdownValue.value,
                        selectedValue.value,
                        context,
                      );
                    },
                  ),
                  RadioListTile<String>(
                    title: const Text(
                      'Ascending',
                      style: TextStyle(fontSize: 12),
                    ),
                    value: SORT_TYPES[1],
                    activeColor: Color(0xFF123E72),
                    groupValue: selectedValue.value,
                    onChanged: (String value) {
                      selectedValue.value = value;
                      onChangedSortTypeAndSortField(
                        dropdownValue.value,
                        selectedValue.value,
                        context,
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  onChangedSortTypeAndSortField(
      String sortField, String sortType, BuildContext context) {
    context
        .bloc<ProductWatcherBloc>()
        .add(ProductWatcherEvent.watchProductsWithSortTypeSpecified(
          sortField,
          sortType,
        ));
  }
}

const SORT_FIELDS = ['Name', 'Price', 'Average Rating', 'Count In Stock'];
const SORT_TYPES = ['-1', '1'];
