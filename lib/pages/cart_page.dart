import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.color(context.theme.colorScheme.secondary).make(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _CardList().p32().expand(),
          const Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.xl5.color(context.theme.colorScheme.secondary).make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  context.theme.floatingActionButtonTheme.backgroundColor),
            ),
            child: "Buy".text.make(),
          ).w32(context),
        ],
      ),
    );
  }
}

class _CardList extends StatefulWidget {
  @override
  State<_CardList> createState() => _CardListState();
}

class _CardListState extends State<_CardList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.done),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.remove_circle_outline,
          ),
        ),
        title: "Item 1".text.make(),
      ),
    );
  }
}
