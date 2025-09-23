import 'package:al_khalifa_dashboard/app/data/app_colors.dart';
import 'package:flutter/material.dart';

import '../widget/withdrawal_history_table.dart';

class UserDashBord extends StatelessWidget {
   UserDashBord({super.key});
  List<Map<String, String>> sampleData = [
    {
      "name": "Kathryn Murphy",
      "phone": "(406) 555-0120",
      "email": "curtis.weaver@example.com",
      "city": "Shayestaganj Union",
      "address": "6391 Elgin St. Celina, Delaware 10299"
    },
    {
      "name": "Theresa Webb",
      "phone": "(702) 555-0122",
      "email": "dolores.chambers@example.com",
      "city": "Shayestaganj Union",
      "address": "6391 Elgin St. Celina, Delaware 10299"
    },
    {
      "name": "Dianne Russell",
      "phone": "(704) 555-0127",
      "email": "deanna.curtis@example.com",
      "city": "Nurpur Union",
      "address": "4140 Parker Rd. Allentown, New Mexico 31134"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
              children: [
                SizedBox(height: 20,),
                _buildDashBordHeader(context),
                WithdrawalHistoryTable(data: sampleData),
              ]
          ),
        ),
      ),
    );
  }

   Widget _buildDashBordHeader(BuildContext context) {
     return LayoutBuilder(
       builder: (context, constraints) {
         bool isMobile = constraints.maxWidth < 600;

         return isMobile
             ? Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               "Hey John, welcome to your User Panel!",
               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
             ),
             const SizedBox(height: 8),
             Text(
               "Monitor your website analytics and track company insights.",
               style: TextStyle(fontSize: 14),
             ),
             const SizedBox(height: 16),
             Align(
               alignment: Alignment.centerLeft,
               child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   backgroundColor: AppColors.greenLightColor,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(8),
                     side: BorderSide(color: AppColors.primaryColor),
                   ),
                 ),
                 onPressed: () {},
                 child: Text(
                   "Add product",
                   style: TextStyle(color: AppColors.primaryColor),
                 ),
               ),
             ),
           ],
         )
             : Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   "Hey John, welcome to your User Panel!",
                   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                 ),
                 Text(
                   "Monitor your website analytics and track company insights.",
                   style: TextStyle(fontSize: 14),
                 ),
               ],
             ),
           ],
         );
       },
     );
   }

}
