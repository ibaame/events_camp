import 'package:events/details.dart';
import 'package:events/event.dart';
import 'package:events/event_card.dart';
import 'package:flutter/material.dart';

List<Event> events = [
  Event('assets/images/1.png', 'جدة', 'غوص', 18, 1, 350),
  Event('assets/images/2.png', 'الأحساء', 'مغامرة', 12, 2, 200),
  Event('assets/images/3.png', 'العلا', 'تراث', 12, 3, 100),
  Event('assets/images/4.png', 'جازان', 'طبيعة', 15, 4, 1500),
  Event('assets/images/5.png', 'الرياض', 'تاريخ', 10, 5, 100),
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الفعاليات'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) => EventCard(events[index]),
        ),
      ),
    );
  }
}
