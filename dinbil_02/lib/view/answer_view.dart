import 'package:flutter/material.dart';
import 'package:dinbil_02/constants/app_colors.dart';

class AnswerView extends StatelessWidget {
  const AnswerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Жооптор'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 15, right: 8),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(15)),
              child: const Column(
                children: [
                  Text(
                    'Дин - бул ишеним жана ибадат кылуу маселесин түп тамырынан бери камтыган улуу жол.  Дин ар бир акыл-эстүү адамды өз каалоосуна ылайык жакшы жолдорго баштаган эреже, мыйзамдар топтому. Дин - адам баласы менен Жараткан Алла Тааланын ортосундагы байланышты жакшыртат.    Азыркы учурда дүйнөдө жалгыз гана туура дин - Мухаммед саллАллау алейхи васаллам алып келген ислам дини. Бул диндин эч бир өкүмү бузулган эмес. Эч качан бузулбайт. Ал эми Ислам дининин ыйык китеби болгон Куран эч бир өзгөртүлбөстөн биздин доорго чейин сакталып келген жана Кыяматка чейин сакталат.        «Ыйман келтирип, жарамдуу амалдарды аткаргандарга келсек, алар-бейишке баруучулар, ал жайда түбөлүк калуучулар» (Бакара сүрөсү, 82-аят)',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  // SvgPicture.asset(
                  //     'assets/continents/${images[continents[index]]}'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
