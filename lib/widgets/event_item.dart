part of 'widgets.dart';

class EventItem extends StatelessWidget {
  final EventModel eventItem;
  EventItem(this.eventItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      width: 260,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
              image: AssetImage(eventItem.urlPath.toString()),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: 3, horizontal: 16),
              width: 86,
              height: 27,
              decoration: BoxDecoration(
                  color: AppColor.secondaryColor(opacity: 0.1),
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                eventItem.label.toString(),
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: AppColor.secondaryColor()),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                eventItem.name.toString(),
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: AppColor.secondaryColor()),
              ),
              Row(
                children: [
                  Text(
                    DateFormat.MMMMEEEEd().format(eventItem.date!).toString(),
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColor.secondaryColor(opacity: .5)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.secondaryColor(opacity: .5)),
                  ),
                  Text(eventItem.address.toString(),
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: AppColor.secondaryColor(opacity: .5)))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
