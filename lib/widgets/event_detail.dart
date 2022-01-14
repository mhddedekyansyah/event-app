part of 'widgets.dart';

class EventDetail extends StatelessWidget {
  final EventModel? event;
  EventDetail(this.event);
  List<UserModel> user = UserModel.generatedUser();
  
  @override
  Widget build(BuildContext context) {
  List<Widget> widgets = [
    ...user.map((e) => 
      Image.network(e.urlPath.toString(), fit: BoxFit.cover,),
    )
  ];
    return Scaffold(
      backgroundColor: AppColor.mainBackgroundColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          height: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context), 
                    icon: Icon(Icons.arrow_back, color: AppColor.secondaryColor(),)
                  ),
                  Text('Event Details', style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.secondaryColor()
                  ),
                ),
                  Icon(Icons.more_horiz_outlined, color: AppColor.secondaryColor(),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(horizontal: 24),
          width: 327,
          height: 350,
          decoration: BoxDecoration(
            color: AppColor.homeAppBar,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(event!.urlPath.toString()),
                fit: BoxFit.cover
              )
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 12),
          height: 121,
          child: Column(
            children: [
              Text(event!.name.toString(), style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: AppColor.secondaryColor()
                      ),
                    ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(DateFormat.MMMMEEEEd().format(event!.date!).toString(), style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: AppColor.secondaryColor(opacity: .5)
                          ),
                        ),
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.secondaryColor(opacity: .5)
                    ),
                  ),
                  Text(event!.name.toString(), style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: AppColor.secondaryColor(opacity: .5)
                          ),
                        ),
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.secondaryColor(opacity: .5)
                    ),
                  ),
                  Text(event!.time.toString(), style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: AppColor.secondaryColor(opacity: .5)
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 13, 24, 11),
                child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageStack.widgets(
                                children: widgets, 
                                totalCount: user.length,
                                widgetRadius: 45,
                                widgetCount: 3,
                                ),
                                SizedBox(width: 5,),
                                Text('Group Music', style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: AppColor.primaryColor
                                ),
                              )
                            ]
                          )
                        )
                      ],
                    ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 24, right: 24, bottom: 12),
          color: Color.fromRGBO(43, 46, 54, 1),
          height: 2
        ),
        Text('Description', style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: AppColor.secondaryColor()
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 4,),
        Text('A music festival is an event aimed at the live performance of singing and instrument which usually varias cool', style: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            color: const Color.fromRGBO(169, 169, 169, 1)
          ),
          textAlign: TextAlign.center,
          softWrap: true,
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: ElevatedButton(
            onPressed: (){}, 
            child: Text('Buy Tickets', style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              color: AppColor.primaryColor
            ),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 18),
            primary: const Color.fromRGBO(38, 41, 48, 1),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
          ),
        )
      ]
      ),
    );
  }
}