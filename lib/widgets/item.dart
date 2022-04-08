part of 'widgets.dart';

class Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(12),
      width: 374,
      height: 88,
      decoration: BoxDecoration(
          color: AppColor.homeAppBar, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/images/imageheader.png'),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(12)),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Close Event Reminder',
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(103, 103, 103, 1)),
              ),
              Text(
                'Midnight EDM Festival',
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColor.secondaryColor()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
