import 'package:PetApp/configuration.dart';
import 'package:PetApp/widgets/custom_button.dart';
import 'package:PetApp/widgets/custom_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pay/pay.dart';

class DetailsScreen extends StatelessWidget {
  String id;
  Color color;
  DetailsScreen({this.id, this.color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    String petName = '';
    String breed = '';
    String age = '';
    String gender = '';
    String imagePath = '';
    Widget details = Container(
      color: Colors.white,
      height: 300,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/logo.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CENTROP, SILIMAN',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'Owner',
                      style: TextStyle(
                        color: fadedBlack,
                      ),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                Text(
                  'Dec 16, 2020',
                  style: TextStyle(
                    color: fadedBlack,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              'The first species to be captive-bred by CENTROP upon its establishment in 1994, this species is classified by the International Union for the Conservation of Nature (IUCN) as an Endangered species.  This species is considered to be facing a risk of extinction in the wild with a population size estimated to number fewer than 2,500 mature individuals and declining, being subjected to hunting and habitat fragmentation.',
              softWrap: true,
              style: TextStyle(
                color: fadedBlack,
                height: 1.7,
              ),
            ),
          ),
        ],
      ),
    );

    Widget space = Container(
      height: 150,
    );

    dogs.forEach((dog) {
      if (dog['id'] == id) {
        petName = dog['name'];
        breed = dog['breed'];
        age = dog['age'];
        gender = dog['gender'];
        imagePath = dog['imagePath'];
      }
    });

    final _paymentItems = [
      PaymentItem(
        label: 'Total',
        amount: '1.99',
        status: PaymentItemStatus.final_price,
      )
    ];
    void onGooglePayResult(paymentResult) {
      debugPrint(paymentResult.toString());
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
                    color: color,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Hero(
                            tag: id,
                            child: Image.asset(
                              imagePath,
                              width: size.width * 0.7,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      details,
                      petName == 'Mailey'
                          ? PictureCaption(
                              caption: 'Status as of June 23, 2021',
                              imageLink: 'images/mailey1.jpg',
                            )
                          : space,
                      petName == 'Mailey'
                          ? PictureCaption(
                              caption: 'Status as of March 23, 2021',
                              imageLink: 'images/mailey0.jfif',
                            )
                          : space,
                      // PictureCaption(
                      //   caption: 'June 23, 2021',
                      //   imageLink: 'images/dog6.png',
                      // ),
                      space,
                    ],
                  ),
                  //   color: Colors.white,
                  //   child: Column(
                  //     children: [
                  //       SizedBox(
                  //         height: 100,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.symmetric(
                  //           horizontal: 20,
                  //         ),
                  //         child: Row(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             CircleAvatar(
                  //               backgroundImage: AssetImage('images/logo.png'),
                  //             ),
                  //             SizedBox(
                  //               width: 10,
                  //             ),
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 Text(
                  //                   'CENTROP, SILIMAN',
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.bold,
                  //                       fontSize: 16),
                  //                 ),
                  //                 Text(
                  //                   'Owner',
                  //                   style: TextStyle(
                  //                     color: fadedBlack,
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //             Expanded(child: Container()),
                  //             Text(
                  //               'Dec 16, 2020',
                  //               style: TextStyle(
                  //                 color: fadedBlack,
                  //                 fontSize: 12,
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 30,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.symmetric(
                  //           horizontal: 20,
                  //         ),
                  //         child: Text(
                  //           'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                  //           style: TextStyle(
                  //             color: fadedBlack,
                  //             height: 1.7,
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 42,
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(CupertinoIcons.chevron_left),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      CupertinoIcons.tray_arrow_down,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ),
          ),
          // Upper details
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 120,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: customShadow,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        petName,
                        style: TextStyle(
                          color: fadedBlack,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        gender == 'female'
                            ? FontAwesomeIcons.venus
                            : FontAwesomeIcons.mars,
                        size: 22,
                        color: Colors.black54,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        breed,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        age + ' years',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        size: 18,
                        color: primaryGreen,
                      ),
                      SizedBox(
                          width: 205,
                          child: Text(
                            'Dumaguete City, Negros Oriental, Philippines',
                            maxLines: 1,
                            softWrap: false,
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                              fontSize: 14,
                              color: fadedBlack,
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomIconButton(
                      iconData: CupertinoIcons.heart,
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 20, bottom: 10),
                      child: GooglePayButton(
                        width: 300,
                        height: 55,
                        paymentConfigurationAsset: 'gpay.json',
                        paymentItems: _paymentItems,
                        style: GooglePayButtonStyle.black,
                        type: GooglePayButtonType.pay,
                        margin: const EdgeInsets.only(top: 15.0),
                        onPaymentResult: onGooglePayResult,
                        loadingIndicator: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PictureCaption extends StatelessWidget {
  String caption;
  String imageLink;
  PictureCaption({this.caption, this.imageLink});

  @override
  Widget build(BuildContext buildContext) {
    return Container(
      color: Colors.white,
      height: 300,
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageLink),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
          child: Text(
            caption,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.white,
                backgroundColor: Colors.black),
          ),
        ),
      ),
    );
  }
}
