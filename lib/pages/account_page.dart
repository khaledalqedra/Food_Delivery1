import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Widget orderVoucherItem({required String name, required int number}) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.deepOrange,
          ),
        ),
        Text(
          'Vouchers',
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget itemTappedTile(
      {required String title,
       String? subtitle,
        required IconData icon
        }) {
    return ListTile(
      title: Text(title),
      leading: Icon(
        icon,
        size: 35,
        color: Colors.deepOrange,
      ),
      onTap: () => debugPrint('$title clicked!'),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: const Icon(Icons.chevron_right,
       color: Colors.deepOrange, 
       size: 25,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/khaled_q.png',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            'Khaled Alqedra',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              orderVoucherItem(name: 'Orders', number: 50),
              orderVoucherItem(name: 'Vouchers', number: 10),
            ],
          ),
          const SizedBox(height: 24.0),
          const Divider(thickness: 2, indent: 20, endIndent: 20,
          ),
          itemTappedTile(title: 'Past Orders', icon: Icons.shopping_cart),
          const Divider(thickness: 2, indent: 20, endIndent: 20,
          ),
          itemTappedTile(title: 'Available Vouchers', icon: Icons.card_giftcard),
          const Divider(thickness: 2, indent: 20, endIndent: 20,
          ),
        ],
      ),
    );
  }
}
