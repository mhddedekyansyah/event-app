part of 'widgets.dart';

class ListEvent extends StatelessWidget {
  final List<EventModel> eventList = EventModel.generatedEvent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 24, right: 24, bottom: 12, top: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'New For You',
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.secondaryColor()),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'View all',
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryColor),
                  ))
            ],
          ),
        ),
        Container(
          height: 227,
          child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 24),
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  EventDetail(eventList[index])));
                    },
                    child: EventItem(eventList[index]),
                  ),
              separatorBuilder: (_, index) => const SizedBox(
                    height: 24,
                  ),
              itemCount: eventList.length),
        ),
        SizedBox(
          height: 40,
        )
      ],
    );
  }
}
