part of 'pages.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainBackgroundColor,
      body: ListView(
          children: [
              HomeAppBar(),
              Item(),
              EventList(),
              ListEvent()
          ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColor.homeAppBar,
        child: Container(
          height: 72,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children :[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 19,
                    height: 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('assets/icons/iconhome.png')
                      )
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    child: Stack(
                      children: [
                        Container(
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage('assets/icons/iconsearch.png')
                            )
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          bottom: 0,
                          child: Container(
                            width: 7,
                            height: 2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('assets/icons/iconsearch1.png')
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        width: 18,
                        height: 17.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('assets/icons/iconnotif.png')
                          )
                        ),
                      ),
                      Container(
                        width: 10,
                        height: 7,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('assets/icons/iconnotif1.png')
                          )
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 13,
                        height: 13,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('assets/icons/iconperson.png')
                          )
                        ),
                      ),
                      Container(
                        width: 18,
                        height: 9,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('assets/icons/iconperson1.png')
                          )
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
}