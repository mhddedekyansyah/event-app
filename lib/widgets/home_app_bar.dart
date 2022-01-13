part of 'widgets.dart';

class HomeAppBar extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 75,
              color: AppColor.homeAppBar,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage('assets/icons/logo.png'))
                        ),
                      ), 
                      SizedBox(width: 8,),
                      Text('Heavent', style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: AppColor.primaryColor
                      ),
                    )
                    ],
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage('assets/icons/menu.png'))
                    )
                  )
                ],
              ),
          );
  }
}