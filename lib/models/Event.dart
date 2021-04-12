class Event {
  //--- Date & Time of the event
  final String dateTime;
  //--- Name Of Event
  final String name;
  //--- person to contact
  final String resourcePerson;
  //--- venue
  final String venue;
  //--- amount
  final String cost;
  //-- image
  final String image;

  Event(
      {this.dateTime,
      this.name,
      this.resourcePerson,
      this.venue,
      this.cost,
      this.image});

  static List<Event> allEvents() {
    var listOfEvents = new List<Event>();

    listOfEvents.add(
      new Event(
          dateTime: "Date: 19/12/2020 | 11:00 AM",
          name: "Christmas Decor Workshop",
          resourcePerson: "Sharon Pires",
          venue: "Online",
          cost: "Free",
          image: "christmas.jpg"),
    );
    listOfEvents.add(new Event(
        dateTime: "Date: 17/12/2020 | 05:00 PM",
        name: "Creative Christmas",
        resourcePerson: "Sharon Pires",
        venue: "Online",
        cost: "Free",
        image: "christmas.jpg"));
    listOfEvents.add(new Event(
        dateTime: "Date: 27/11/2020 | 11:00 AM",
        name: "General Medical Checkup Camp",
        resourcePerson: "Sharon Pires",
        venue: "Online",
        cost: "Free",
        image: "christmas.jpg"));
    listOfEvents.add(new Event(
        dateTime: "Date: 26/11/2020 | 10:30 AM",
        name: "Online Disaster Management Training",
        resourcePerson: "Sharon Pires",
        venue: "Online",
        cost: "Free",
        image: "christmas.jpg"));

    return listOfEvents;
  }
}