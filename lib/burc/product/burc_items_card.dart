import 'package:flutter/material.dart';
import '../feature/model/burc_model.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double elevationSize = 4;
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: elevationSize,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/burcDetay',
                  arguments: listelenenBurc);
            },
            leading: Image.asset(
              "assets/images/" + listelenenBurc.burcKucukResim,
            ),
            title: Text(
              listelenenBurc.burcAd,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              listelenenBurc.burcTarih,
              style: myTextStyle.subtitle1,
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}
