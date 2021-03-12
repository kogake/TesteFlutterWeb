import 'package:conversor_mercadoria/app/Models/mercadoria_model.dart';
import 'package:flutter/material.dart';

class conversor_Box extends StatelessWidget {
  final List<Mercadoria_model> itens;
  final Mercadoria_model selectedItem;
  final TextEditingController controller;
  final void Function(Mercadoria_model model) onChanged;

  const conversor_Box(
      {Key key, this.itens, this.controller, this.onChanged, this.selectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 56,
              child: DropdownButton<Mercadoria_model>(
                value: selectedItem,
                iconEnabledColor: Colors.green,
                icon: Icon(Icons.fire_extinguisher),
                isExpanded: true,
                underline: Container(
                  height: 1,
                  color: Colors.green,
                ),
                items: itens
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(
                            e.tipo,
                          ),
                        ))
                    .toList(),
                onChanged: onChanged,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 7,
          ),
          Expanded(
            flex: 2,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
