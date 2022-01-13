

import 'package:intl/intl.dart';

class EventModel{
  EventModel({ this.label, this.name, this.date, this.address, this.time, this.urlPath });

  String? label;
  String? name;
  DateTime? date;
  String? address;
  String? time;
  String? urlPath;

  static List<EventModel> generatedEvent(){
    return [
      EventModel(label: 'Festival', date: DateTime.now(), name: 'Midnight Bimosaurus Live', address: 'Medan', urlPath: 'assets/images/imagehero.png'),
      EventModel(label: 'Festival', date: DateTime.now(), name: 'Eduation', address: 'Jakarta', urlPath: 'assets/images/imagehero1.png'),
    ];
  }
}