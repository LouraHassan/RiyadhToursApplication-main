import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/services_item.dart';

class HospitalsList extends StatefulWidget {
  const HospitalsList({super.key});

  @override
  State<HospitalsList> createState() => _HospitalsListState();
}

class _HospitalsListState extends State<HospitalsList> {
  final List<Map<String, String>> _hospitals = [
    {
      "name": "DR SULAIMAN ALHABIB",
      "link": "https://apps.apple.com/sa/app/dr-suliaman-alhabib/id733503978"
    },
    {
      "name": "SPECIALIZED MEDICAL CENTER",
      "link":
          "https://apps.apple.com/sa/app/specialized-medical-center/id1151403577"
    },
    {
      "name": "Dallah Hospital",
      "link":
          "https://apps.apple.com/sa/app/dallah-hospitals-%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%8A%D8%A7%D8%AA-%D8%AF%D9%84%D9%87/id805605138"
    },
    {
      "name": "Alhammadi Hospital",
      "link": "https://apps.apple.com/sa/app/al-hammadi-hospitals/id1539907258"
    },
    {
      "name": "Saudi German Hospital",
      "link": "https://apps.apple.com/sa/app/saudi-german-health/id1574165966"
    },
    {
      "name": "Mouwasat Hospital",
      "link": "https://apps.apple.com/sa/app/mouwasat-hospital/id1612207127"
    },
    {
      "name": "Dr Soliman Fakeeh Hospital",
      "link": "https://apps.apple.com/sa/app/fuh-care/id1549804021"
    },
    {
      "name": "Ali Bin Ali Hospital",
      "link":
          "https://apps.apple.com/sa/app/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89-%D8%B9%D9%84%D9%89-%D8%A8%D9%86-%D8%B9%D9%84%D9%89/id6478157039"
    },
    {
      "name": "King Faisal Specialist Hospital",
      "link": "https://apps.apple.com/sa/app/kfshrc-patientconnect/id1490996153"
    },
  ];

  final List _logo = [
    'https://images.sehaguide.com//logos/34141/12615773_1066547196719971_4279365588429550143_o8ce0980f-7136-4212-943c-cb7a2c39a245.png',
    'https://play-lh.googleusercontent.com/sWqxDn9DoFpTdA1Knf1CejG276G_57zzJygTYJryp8bIRo7yXw-WWyxouy4Vp4suf9U',
    'https://cdn6.aptoide.com/imgs/5/1/c/51cf60a5f6c4612875ea23ad4b8d3efa_icon.jpg',
    'https://media.licdn.com/dms/image/C560BAQGvEo1UbB2asg/company-logo_200_200/0/1519869226496?e=2147483647&v=beta&t=zrEmtDgtbjacEoSknCMDejIteZIdR3BQ4Ra6sqlRuQE',
    'https://play-lh.googleusercontent.com/6ICLpwb6x15vsQpEInyOqn6stk_PcP2vkgTQ87RE_VwG-jb6KeBLXgox1ZMBCErtdsk',
    'https://play-lh.googleusercontent.com/T4U0I9dQfmFpLTVkn7aSXcMeMbpDr32JQtO_qBsSQgjc3lOx5U3Xq0id4WpAYqR1n9Y',
    'https://media.glassdoor.com/sql/983478/dr-soliman-fakeeh-hospital-squarelogo-1584094840587.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnYYfs3DJHhajT2pYbbEMojibHOpAPF7i2UQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJy5zecW-dvmXS6NP3DHQ0UIgom3tQhwB1-A&usqp=CAU',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Hospitals",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _hospitals.length,
          itemBuilder: (context, index) {
            final hospital = _hospitals[index];
            return ServicesItem(
              name: hospital["name"]!,
              link: _logo[index],
              link2: hospital["link"]!,
            );
          }),
    );
  }
}

class HotelsList extends StatefulWidget {
  const HotelsList({super.key});

  @override
  State<HotelsList> createState() => _HotelsListState();
}

class _HotelsListState extends State<HotelsList> {
  final List<Map<String, String>> _hotels = [
    {"name": "Booking", "link": "https://www.booking.com/"},
    {"name": "Airbnb", "link": "https://www.airbnb.com/"},
    {"name": "Almosafer", "link": "https://www.almosafer.com/en/flights-home"},
    {"name": "Hopper", "link": "https://hopper.com/"},
    {"name": "TripAdvisor", "link": "https://www.tripadvisor.com/"},
    {"name": "Almatar", "link": "https://almatar.com/en/flights/"},
    {"name": "Rehlat", "link": "https://www.rehlat.com.sa/"}
  ];

  final List _logo = [
    "https://seeklogo.com/images/B/booking-logo-937C69F36E-seeklogo.com.png",
    "https://play-lh.googleusercontent.com/1zfN_BL13q20v0wvBzMWiZ_sL_t4KcCJBeAMRpOZeT3p34quM-4-pO-VcLj8PJNXPA0=w240-h480-rw",
    "https://play-lh.googleusercontent.com/Jesar9RAbtMTs-ggBXg7jx6PV5r0VkjY62K5CxBMCW6GDBDICD7SJTRtODoQVWZ8xg",
    "https://play-lh.googleusercontent.com/S-6NNM2VfCjO5VCkPYDElkvJ5vKCWTbgy_yEF_VWHnfkGZPh321zXiqeYVGngo5Fpzc",
    "https://play-lh.googleusercontent.com/Jh2kWG5cCWHWp3dBKdv2ZRu6PPoFmt1YjsjyktKYM29jz3HpPdyf9SpnTrFHfzIEUYA",
    "https://play-lh.googleusercontent.com/ZR7ZpUCUSIRZBJAtGFHALpXxIRUMPzwyAfzEt91sPvQ9WFvNFrRRXwCVLNoCC3aAIEY",
    "https://dynamicimages.rehlat.com/DynamicImages/MobileApp/1_NativeApp_Img.png?timestamp=17103634"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Hotels",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _hotels.length,
          itemBuilder: (context, index) {
            final hotels = _hotels[index];
            return ServicesItem(
              name: hotels["name"]!,
              link: _logo[index],
              link2: hotels["link"]!,
            );
          }),
    );
  }
}

class CarRentalList extends StatefulWidget {
  const CarRentalList({super.key});

  @override
  State<CarRentalList> createState() => _CarRentalListState();
}

class _CarRentalListState extends State<CarRentalList> {
  final List<Map<String, String>> _carrental = [
    {
      "name": "Key",
      "link": "https://apps.apple.com/sa/app/key-car-rental/id1282284664?l=ar"
    },
    {
      "name": "Yelo",
      "link":
          "https://apps.apple.com/sa/app/%D9%8A%D9%84%D9%88/id923853721?l=ar"
    },
    {
      "name": "Carwah",
      "link":
          "https://apps.apple.com/sa/app/%D9%83%D8%B1%D9%88%D8%A9-carwah-i-%D8%AA%D8%A3%D8%AC%D9%8A%D8%B1-%D8%B3%D9%8A%D8%A7%D8%B1%D8%A7%D8%AA/id1387161215?l=ar"
    },
    {
      "name": "Telgani",
      "link":
          "https://apps.apple.com/sa/app/%D8%AA%D9%84%D9%82%D8%A7%D9%86%D9%8A-telgani/id1377706766?l=ar"
    },
  ];

  final List _logo = [
    'https://play-lh.googleusercontent.com/sySyi-NJ_OTEG56nGLq2mfPs3RMNqkElDNR9oZK8pUdog-Yw5RFoE1ZZOjUpksBAXQ',
    'https://play-lh.googleusercontent.com/Zyyljd8ymvui0_CBNUDyQ1YhvQKG1r9xeXyvb1DT38U6LkfLgSxDTHZt2fGWLENXdwY5',
    'https://yt3.googleusercontent.com/oE1EnpZy1e4-m9dTjR9dPN-mzgnAYxRmmuB6Itx-D3yk-WcR_tz0IaBpiGbbNHWLUCAlD_j1Xg=s900-c-k-c0x00ffffff-no-rj',
    'https://play-lh.googleusercontent.com/gLsJUcRXyRM2245BCJZF3Ai7hsnj0qX4fCA5w6QR0LLmH-0dfvnd0KKn2ioR79fEWw',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Car Rentral",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _carrental.length,
          itemBuilder: (context, index) {
            final carrental = _carrental[index];
            return ServicesItem(
              name: carrental["name"]!,
              link: _logo[index],
              link2: carrental["link"]!,
            );
          }),
    );
  }
}

class DeliveryList extends StatefulWidget {
  const DeliveryList({super.key});

  @override
  State<DeliveryList> createState() => _DeliveryListState();
}

class _DeliveryListState extends State<DeliveryList> {
  final List<Map<String, String>> _delivery = [
    {
      "name": "Mrsool",
      "link":
          "https://apps.apple.com/sa/app/mrsool-app-%D8%AA%D8%B7%D8%A8%D9%8A%D9%82-%D9%85%D8%B1%D8%B3%D9%88%D9%84/id1040038773"
    },
    {
      "name": "Jahez",
      "link": "https://apps.apple.com/sa/app/jahez/id1137352156"
    },
    {
      "name": "ToYou",
      "link": "https://apps.apple.com/sa/app/toyou-delivery-more/id1196302015"
    },
    {
      "name": "The Chefz",
      "link":
          "https://apps.apple.com/sa/app/the-chefz-fast-food-delivery/id1139450244"
    },
    {
      "name": "HungerStation",
      "link": "https://apps.apple.com/sa/app/hungerstation/id596011949"
    },
    {"name": "COFE", "link": "https://apps.apple.com/sa/app/cofe/id1339438881"},
    {
      "name": "Ninja",
      "link":
          "https://apps.apple.com/sa/app/ninja-%D9%86%D9%8A%D9%86%D8%AC%D8%A7/id1620153149"
    },
  ];

  final List _logo = [
    'https://play-lh.googleusercontent.com/C5Da8MqdVedd3-M-aIWsjc0R1DOINMJBsV7nZezLH-dztbRVQudLc9DjFk8vciGzx7A',
    'https://play-lh.googleusercontent.com/vo3LYx5f9xGcGD_23tnXYLtbShsTveRpKslOiB14QOu95I9A2OkB2wTB_ORd2-RB1E4',
    'https://play-lh.googleusercontent.com/kpsFwUFQNVUNvG4EgOw06N_wOBjuUIiiYa04fhFQftLCkmWU0lww8ERMhSOfO_akDo8',
    'https://play-lh.googleusercontent.com/eABRCczeTa3UJSc_Y6_R5NhSNtu_5fqz459WzBv9LvIEGvYp2KBw35fW2EXiZkpnkQyL',
    'https://play-lh.googleusercontent.com/lxqIY6ukgrD2T6pVzGL9W7851Vll4xKrADJOl8gLOTVps9ZGUa3Z88DPrCXgAJ7TrZ8Y',
    'https://play-lh.googleusercontent.com/GqxOM5eaPP7EURgZVIT4bFd6JOcX8gQ9lYMn8Wo3BybquerqZY4bAYWTGfquhhYTWRv5',
    'https://play-lh.googleusercontent.com/B2dbsTz6ey1BxzGqQAkmeAJzwRuEHj6LZ7vzmx9cWCEQiGS18dGa76bRDS9CAzqtiw',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Delivery",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _delivery.length,
          itemBuilder: (context, index) {
            final delivery = _delivery[index];
            return ServicesItem(
              name: delivery["name"]!,
              link: _logo[index],
              link2: delivery["link"]!,
            );
          }),
    );
  }
}

class EmergencyContacts extends StatefulWidget {
  const EmergencyContacts({super.key});

  @override
  State<EmergencyContacts> createState() => _EmergencyContactsState();
}

class _EmergencyContactsState extends State<EmergencyContacts> {
  final List _emName = [
    "Security Operations Number",
    "Ambulance",
    "Tourism Call Center",
    "Najm",
  ];

  final List _emNum = ["911", "997", "930", "920000560"];

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {
      throw 'Could not launch $launchUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Emergency Contacts",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _emName.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => _makePhoneCall(_emNum[index]),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: 320,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(3, 3),
                          spreadRadius: 2,
                          blurRadius: 2)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: const Color.fromRGBO(40, 87, 69, 1), width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        _emName[index],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        _emNum[index],
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class LaundryList extends StatefulWidget {
  const LaundryList({super.key});

  @override
  State<LaundryList> createState() => _LaundryListState();
}

class _LaundryListState extends State<LaundryList> {
  final List<Map<String, String>> _laundry = [
    {
      "name": "Ghasili",
      "link":
          "https://apps.apple.com/sa/app/%D8%B4%D8%B1%D9%83%D8%A9-%D8%BA%D8%B3%D9%8A%D9%84%D9%8A/id1644682418"
    },
    {
      "name": "GaseelExpress",
      "link":
          "https://apps.apple.com/sa/app/gaseelexpress-%D8%BA%D8%B3%D9%8A%D9%84-%D8%A7%D9%83%D8%B3%D8%A8%D8%B1%D8%B3/id1560146195"
    },
    {
      "name": "فقاعة غسيل",
      "link":
          "https://apps.apple.com/sa/app/%D9%81%D9%82%D8%A7%D8%B9%D8%A9-%D8%BA%D8%B3%D9%8A%D9%84-%D8%B7%D9%84%D8%A8%D8%A7%D8%AA-%D8%A7%D9%88%D9%86-%D9%84%D8%A7%D9%8A%D9%86/id1406871224"
    },
    {
      "name": "Aljabr Laundry",
      "link": "https://apps.apple.com/sa/app/aljabr-laundry/id1581997861"
    },
    {
      "name": "Lotus Laundry",
      "link":
          "https://apps.apple.com/sa/app/bubbles-laundry-%D9%85%D8%BA%D8%A7%D8%B3%D9%84-%D8%A8%D8%A8%D9%84%D8%B2/id1570661021"
    },
  ];

  final List _logo = [
    'https://play-lh.googleusercontent.com/eAt6_-7o0W_QLiOTwBvKn3VYU9QOfKLAj8y2DQ_kHFYThVw97sgk-l2rjlmcXQ1cBic',
    'https://play-lh.googleusercontent.com/CUleurtoF0mIY1ZM_QYFeJnBYA4vE14ArlsUoDXLlW1Ms9y4Fsbg8xZHeeAmqv2uLA',
    'https://is3-ssl.mzstatic.com/image/thumb/Purple115/v4/3b/88/a0/3b88a0d8-4817-81df-010e-536a0171353c/AppIcon-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-7.png/512x512bb.jpg',
    'https://pbs.twimg.com/profile_images/1527235986433908736/3PG3j9oC_400x400.jpg',
    'https://play-lh.googleusercontent.com/pp94A2oR4gLiEb1YF3Nkwkdc-YAcubBrQSvh0Q16ZyVxS3EYtutBGaW9Pl1xv0xyGis',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Laundry",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _laundry.length,
          itemBuilder: (context, index) {
            final laundry = _laundry[index];
            return ServicesItem(
              name: laundry["name"]!,
              link: _logo[index],
              link2: laundry["link"]!,
            );
          }),
    );
  }
}

class PharmaciesList extends StatefulWidget {
  const PharmaciesList({super.key});

  @override
  State<PharmaciesList> createState() => _PharmaciesListState();
}

class _PharmaciesListState extends State<PharmaciesList> {
  final List<Map<String, String>> _pharmacies = [
    {"name": "Nahdi Pharmacy", "link": "https://www.nahdionline.com/ar/"},
    {"name": "Al-Dawaa Pharmacy", "link": "https://www.al-dawaa.com"},
    {
      "name": "Lemon Pharmacy",
      "link":
          "https://www.lemon.sa/index.php?route=product/category&path=20&tracking=5f1d3274a4130&gclid=EAIaIQobChMI47-99v-EhQMVarGDBx2ASQbsEAAYASAAEgJY7fD_BwE"
    },
    {"name": "Orange Pharmacy", "link": "https://orangepharmacy.sa"},
    {
      "name": "Kunooz Pharmacy",
      "link":
          "https://www.kunooz.com/ar/page/offers?gad_source=1&gclid=EAIaIQobChMIxNH2hoCFhQMV4QkGAB0hnADIEAAYASAAEgJlHvD_BwE"
    },
    {
      "name": "Whites Pharmacy",
      "link":
          "https://www.whites.net/ar/page/offers?utm_source=google&utm_medium=cpc&utm_campaign=Acquisit_Whites_GSN_loc-All_lan-AR_brand_Web&utm_content=Acquisit_Whites_GSN_loc-KSA_lan-AR_brand&utm_term=وايتس&gclid=EAIaIQobChMIu4O_jYCFhQMVVpeDBx3uXAzyEAAYASAAEgKNUfD_BwE"
    },
    {"name": "Boots Pharmacy", "link": "https://sa.boots.com/ar/"},
    {"name": "Adam Pharmacy", "link": "https://www.adamonline.com/ar"},
    {"name": "Innova Pharmacy", "link": "https://www.innovaonline.sa"},
  ];

  final List _logo = [
    'https://play-lh.googleusercontent.com/e25Mhhn6PzECbvUM3T_TlRwwXxXVruOQLDqmMRER-kFaocRrRS-FYcWeagd354DjYl8',
    'https://s3-symbol-logo.tradingview.com/aldawaa-medical-services-co--600.png',
    'https://play-lh.googleusercontent.com/x23bJauoMdVfeJQwV0V9Q9tERu6ritLwHFfGrmW-RgJxljOmMIM_SRsNjkiFfV8srLNs',
    'https://play-lh.googleusercontent.com/wb5mQbf7vTDv_7UE_p5Dmh8GlXCvNv5vsrghwtNlp0z-R61Z-sFbdggiWB1SDNI-Ve1G=w240-h480-rw',
    'https://play-lh.googleusercontent.com/x5hgaleZxoktMRcsBfxIANIw8S2Gqb3Z5j-DUKHhlxEnH9j9cTh-DE7bc5Oh1OJw0kQM',
    'https://media.licdn.com/dms/image/C4E0BAQFDjPWXmQYedg/company-logo_200_200/0/1648988566391?e=2147483647&v=beta&t=8I-onH64V5j-9JE0EXix__NeDC1wI30xjtZJ-6WHk04',
    'https://play-lh.googleusercontent.com/PjGCSjJ10LX-AI_H7qiUV4qGUuvoLz7HobhdNl-cclN72QtBMHBk823KbsLmQsH9qWi2',
    'https://media.licdn.com/dms/image/C4E0BAQGWJxuQVKZ25Q/company-logo_200_200/0/1616275541036?e=2147483647&v=beta&t=wEafJ2VE-ot7mqeu9O-cc7x2ynFIFQrxr4osMZyQAeQ',
    'https://play-lh.googleusercontent.com/mH3o5tNit6o_7q_6UiSf8cSem-QRDJWjaQhbQAmyrq084bve0V3val9UTMYkuU6HVXg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Pharmacies",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _pharmacies.length,
          itemBuilder: (context, index) {
            final pharmacies = _pharmacies[index];
            return ServicesItem(
              name: pharmacies["name"]!,
              link: _logo[index],
              link2: pharmacies["link"]!,
            );
          }),
    );
  }
}

class TransportList extends StatefulWidget {
  const TransportList({super.key});

  @override
  State<TransportList> createState() => _TransportListState();
}

class _TransportListState extends State<TransportList> {
  final List<Map<String, String>> _car = [
    {"name": "Uber", "link": "https://www.uber.com/sa/en/"},
    {"name": "Careem", "link": "https://www.careem.com/"},
    {"name": "Jeeny", "link": "https://www.jeeny.me/en/"},
    {"name": "Bolt", "link": "https://bolt.eu/ar-sa/"},
  ];

  final List _bus = [
    {"name": "Bus", "link": "https://www.riyadhbus.sa/"},
  ];

  final List _metro = [
    {"name": "Metro", "link": "https://www.riyadhmetro.sa/"},
  ];

  final List _carlogo = [
    "https://play-lh.googleusercontent.com/AQtSF5Sl18yp3mQ2tcbOrBLekb7cyP3kyg5BB1uUuc55zfcnbkCDLHFTBwZfYiu1aDI",
    "https://play-lh.googleusercontent.com/9kHZMDejlsMaxifCvfosjRw8NKaj3dnNquEbTFBieo4N2Prtk0EaIBHOgcK7i4lFItY",
    "https://play-lh.googleusercontent.com/PZFH1ice6ZY5IIluGGwGAvKsQqwkUe-2yIYsfu34XPFfu2KpaP5ZnREaJinsI7lSAL8",
    "https://play-lh.googleusercontent.com/TRCKh9Uk5mME5lVDZBAVmBMyBEiumHw4Ef9MTAnRqgcK8MEr4M8jqqBDGX_pKVBffpo",
  ];

  final List _buslogo = [
    "https://play-lh.googleusercontent.com/UW02GYXL-3Oxtib9UvCnFysN5vpUIpveMnQ08r89LKtcjmtYKo9jfSIpGplk6e5vJA"
  ];
  final List _metrologo = [
    "https://zenprospect-production.s3.amazonaws.com/uploads/pictures/64a5211a3550cd000162c795/picture"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Transportation",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 35,
              color: Color.fromRGBO(40, 87, 69, 1),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "Car Ride",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                  itemCount: _car.length,
                  itemBuilder: (context, index) {
                    final car = _car[index];
                    return ServicesItem(
                      name: car["name"]!,
                      link: _carlogo[index],
                      link2: car["link"]!,
                    );
                  }),
            ),
            const Text(
              "Bus",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemCount: _bus.length,
                  itemBuilder: (context, index) {
                    final bus = _bus[index];
                    return ServicesItem(
                      name: bus["name"]!,
                      link: _buslogo[index],
                      link2: bus["link"]!,
                    );
                  }),
            ),
            const Text(
              "Metro",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemCount: _metro.length,
                  itemBuilder: (context, index) {
                    final metro = _metro[index];
                    return ServicesItem(
                      name: metro["name"]!,
                      link: _metrologo[index],
                      link2: metro["link"]!,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class HotelsListAR extends StatefulWidget {
  const HotelsListAR({super.key});

  @override
  State<HotelsListAR> createState() => _HotelsListARState();
}

class _HotelsListARState extends State<HotelsListAR> {
  final List<Map<String, String>> _hotels = [
    {"name": "بوكينق", "link": "https://www.booking.com/"},
    {"name": "ايربنب", "link": "https://www.airbnb.com/"},
    {"name": "المسافر", "link": "https://www.almosafer.com/en/flights-home"},
    {"name": "هوبر", "link": "https://hopper.com/"},
    {"name": "تريب ادفايزر", "link": "https://www.tripadvisor.com/"},
    {"name": "المطار", "link": "https://almatar.com/en/flights/"},
    {"name": "رحلات", "link": "https://www.rehlat.com.sa/"}
  ];

  final List _logo = [
    "https://play-lh.googleusercontent.com/eJuvWSnbPwEWAQCYwl8i9nPJXRzTv94JSYGGrKIu0qeuG_5wgYtb982-2F_jOGtIytY",
    "https://play-lh.googleusercontent.com/1zfN_BL13q20v0wvBzMWiZ_sL_t4KcCJBeAMRpOZeT3p34quM-4-pO-VcLj8PJNXPA0=w240-h480-rw",
    "https://play-lh.googleusercontent.com/Jesar9RAbtMTs-ggBXg7jx6PV5r0VkjY62K5CxBMCW6GDBDICD7SJTRtODoQVWZ8xg",
    "https://play-lh.googleusercontent.com/S-6NNM2VfCjO5VCkPYDElkvJ5vKCWTbgy_yEF_VWHnfkGZPh321zXiqeYVGngo5Fpzc",
    "https://play-lh.googleusercontent.com/Jh2kWG5cCWHWp3dBKdv2ZRu6PPoFmt1YjsjyktKYM29jz3HpPdyf9SpnTrFHfzIEUYA",
    "https://play-lh.googleusercontent.com/ZR7ZpUCUSIRZBJAtGFHALpXxIRUMPzwyAfzEt91sPvQ9WFvNFrRRXwCVLNoCC3aAIEY",
    "https://dynamicimages.rehlat.com/DynamicImages/MobileApp/1_NativeApp_Img.png?timestamp=17103634"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "الفنادق",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 35,
                  color: Color.fromRGBO(40, 87, 69, 1),
                )),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: _hotels.length,
          itemBuilder: (context, index) {
            final hotels = _hotels[index];
            return ServicesItemAR(
              name: hotels["name"]!,
              link: _logo[index],
              link2: hotels["link"]!,
            );
          }),
    );
  }
}

class TransportListAR extends StatefulWidget {
  const TransportListAR({super.key});

  @override
  State<TransportListAR> createState() => _TransportListARState();
}

class _TransportListARState extends State<TransportListAR> {
  final List<Map<String, String>> _car = [
    {"name": "أوبر", "link": "https://www.uber.com/sa/en/"},
    {"name": "كريم", "link": "https://www.careem.com/"},
    {"name": "جيني", "link": "https://www.jeeny.me/en/"},
    {"name": "بولت", "link": "https://bolt.eu/ar-sa/"},
  ];

  final List<Map<String, String>> _bus = [
    {"name": "حافلات الرياض", "link": "https://www.riyadhbus.sa/"},
  ];

  final List<Map<String, String>> _metro = [
    {"name": "قطار الرياض", "link": "https://www.riyadhmetro.sa/"},
  ];

  final List _carlogo = [
    "https://play-lh.googleusercontent.com/AQtSF5Sl18yp3mQ2tcbOrBLekb7cyP3kyg5BB1uUuc55zfcnbkCDLHFTBwZfYiu1aDI",
    "https://play-lh.googleusercontent.com/9kHZMDejlsMaxifCvfosjRw8NKaj3dnNquEbTFBieo4N2Prtk0EaIBHOgcK7i4lFItY",
    "https://play-lh.googleusercontent.com/PZFH1ice6ZY5IIluGGwGAvKsQqwkUe-2yIYsfu34XPFfu2KpaP5ZnREaJinsI7lSAL8",
    "https://play-lh.googleusercontent.com/TRCKh9Uk5mME5lVDZBAVmBMyBEiumHw4Ef9MTAnRqgcK8MEr4M8jqqBDGX_pKVBffpo",
  ];

  final List _buslogo = [
    "https://play-lh.googleusercontent.com/UW02GYXL-3Oxtib9UvCnFysN5vpUIpveMnQ08r89LKtcjmtYKo9jfSIpGplk6e5vJA"
  ];
  final List _metrologo = [
    "https://zenprospect-production.s3.amazonaws.com/uploads/pictures/64a5211a3550cd000162c795/picture"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "المواصلات",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 35,
                  color: Color.fromRGBO(40, 87, 69, 1),
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "سيارة الأجرة",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                  itemCount: _car.length,
                  itemBuilder: (context, index) {
                    final car = _car[index];
                    return ServicesItemAR(
                      name: car["name"]!,
                      link: _carlogo[index],
                      link2: car["link"]!,
                    );
                  }),
            ),
            const Text(
              "الحافلة",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemCount: _bus.length,
                  itemBuilder: (context, index) {
                    final bus = _bus[index];
                    return ServicesItemAR(
                      name: bus["name"]!,
                      link: _buslogo[index],
                      link2: bus["link"]!,
                    );
                  }),
            ),
            const Text(
              "القطار",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  itemCount: _metro.length,
                  itemBuilder: (context, index) {
                    final metro = _metro[index];
                    return ServicesItemAR(
                      name: metro["name"]!,
                      link: _metrologo[index],
                      link2: metro["link"]!,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class HospitalsListAR extends StatefulWidget {
  const HospitalsListAR({super.key});

  @override
  State<HospitalsListAR> createState() => _HospitalsListARState();
}

class _HospitalsListARState extends State<HospitalsListAR> {
  final List<Map<String, String>> _hospitalsApps = [
    {
      "name": "مستشفى سليمان الحبيب",
      "link":
          "https://apps.apple.com/sa/app/dr-suliaman-alhabib/id733503978?l=ar"
    },
    {
      "name": "المركز التخصصي الطبي",
      "link":
          "https://apps.apple.com/sa/app/specialized-medical-center/id1151403577?l=ar"
    },
    {
      "name": "مستشفى دله",
      "link":
          "https://apps.apple.com/sa/app/dallah-hospitals-%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%8A%D8%A7%D8%AA-%D8%AF%D9%84%D9%87/id805605138?l=ar"
    },
    {
      "name": "مستشفى الحمادي",
      "link":
          "https://apps.apple.com/sa/app/al-hammadi-hospitals/id1539907258?l=ar"
    },
    {
      "name": "مستشفى السعودي الألماني",
      "link":
          "https://apps.apple.com/sa/app/saudi-german-health/id1574165966?l=ar"
    },
    {
      "name": "مستشفى المواساة",
      "link":
          "https://apps.apple.com/sa/app/mouwasat-hospital/id1612207127?l=ar"
    },
    {
      "name": "مستشفى سليمان فقيه",
      "link": "https://apps.apple.com/sa/app/fuh-care/id1549804021?l=ar"
    },
    {
      "name": "مستشفى علي بن علي",
      "link":
          "https://apps.apple.com/sa/app/%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89-%D8%B9%D9%84%D9%89-%D8%A8%D9%86-%D8%B9%D9%84%D9%89/id6478157039?l=ar"
    },
    {
      "name": "مستشفى الملك فيصل التخصصي",
      "link":
          "https://apps.apple.com/sa/app/kfshrc-patientconnect/id1490996153?l=ar"
    },
  ];

  final List _logo = [
    'https://images.sehaguide.com//logos/34141/12615773_1066547196719971_4279365588429550143_o8ce0980f-7136-4212-943c-cb7a2c39a245.png',
    'https://play-lh.googleusercontent.com/sWqxDn9DoFpTdA1Knf1CejG276G_57zzJygTYJryp8bIRo7yXw-WWyxouy4Vp4suf9U',
    'https://cdn6.aptoide.com/imgs/5/1/c/51cf60a5f6c4612875ea23ad4b8d3efa_icon.jpg',
    'https://media.licdn.com/dms/image/C560BAQGvEo1UbB2asg/company-logo_200_200/0/1519869226496?e=2147483647&v=beta&t=zrEmtDgtbjacEoSknCMDejIteZIdR3BQ4Ra6sqlRuQE',
    'https://play-lh.googleusercontent.com/6ICLpwb6x15vsQpEInyOqn6stk_PcP2vkgTQ87RE_VwG-jb6KeBLXgox1ZMBCErtdsk',
    'https://play-lh.googleusercontent.com/T4U0I9dQfmFpLTVkn7aSXcMeMbpDr32JQtO_qBsSQgjc3lOx5U3Xq0id4WpAYqR1n9Y',
    'https://media.glassdoor.com/sql/983478/dr-soliman-fakeeh-hospital-squarelogo-1584094840587.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnYYfs3DJHhajT2pYbbEMojibHOpAPF7i2UQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJy5zecW-dvmXS6NP3DHQ0UIgom3tQhwB1-A&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "المستشفيات",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 35,
                  color: Color.fromRGBO(40, 87, 69, 1),
                )),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: _hospitalsApps.length,
        itemBuilder: (context, index) {
          final hospital = _hospitalsApps[index];
          return ServicesItemAR(
            name: hospital["name"]!,
            link: _logo[index],
            link2: hospital["link"]!,
          );
        },
      ),
    );
  }
}

class CarRentalAR extends StatefulWidget {
  const CarRentalAR({super.key});

  @override
  State<CarRentalAR> createState() => _CarRentalARState();
}

class _CarRentalARState extends State<CarRentalAR> {
  final List<Map<String, String>> _carRentalApps = [
    {
      "name": "المفتاح",
      "link": "https://apps.apple.com/sa/app/key-car-rental/id1282284664?l=ar"
    },
    {
      "name": "يلو",
      "link":
          "https://apps.apple.com/sa/app/%D9%8A%D9%84%D9%88/id923853721?l=ar"
    },
    {
      "name": "كروة",
      "link":
          "https://apps.apple.com/sa/app/%D9%83%D8%B1%D9%88%D8%A9-carwah-i-%D8%AA%D8%A3%D8%AC%D9%8A%D8%B1-%D8%B3%D9%8A%D8%A7%D8%B1%D8%A7%D8%AA/id1387161215?l=ar"
    },
    {
      "name": "تلقاني",
      "link":
          "https://apps.apple.com/sa/app/%D8%AA%D9%84%D9%82%D8%A7%D9%86%D9%8A-telgani/id1377706766?l=ar"
    },
  ];

  final List _logo = [
    'https://play-lh.googleusercontent.com/sySyi-NJ_OTEG56nGLq2mfPs3RMNqkElDNR9oZK8pUdog-Yw5RFoE1ZZOjUpksBAXQ',
    'https://play-lh.googleusercontent.com/Zyyljd8ymvui0_CBNUDyQ1YhvQKG1r9xeXyvb1DT38U6LkfLgSxDTHZt2fGWLENXdwY5',
    'https://yt3.googleusercontent.com/oE1EnpZy1e4-m9dTjR9dPN-mzgnAYxRmmuB6Itx-D3yk-WcR_tz0IaBpiGbbNHWLUCAlD_j1Xg=s900-c-k-c0x00ffffff-no-rj',
    'https://play-lh.googleusercontent.com/gLsJUcRXyRM2245BCJZF3Ai7hsnj0qX4fCA5w6QR0LLmH-0dfvnd0KKn2ioR79fEWw',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "تأجير السيارات",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 35,
                  color: Color.fromRGBO(40, 87, 69, 1),
                )),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: _carRentalApps.length,
        itemBuilder: (context, index) {
          final app = _carRentalApps[index];
          return ServicesItemAR(
            name: app["name"]!,
            link: _logo[index], // استبدل بالأيقونات المناسبة
            link2: app["link"]!,
          );
        },
      ),
    );
  }
}

class DeliveryListAR extends StatefulWidget {
  const DeliveryListAR({super.key});

  @override
  State<DeliveryListAR> createState() => _DeliveryListARState();
}

class _DeliveryListARState extends State<DeliveryListAR> {
  final List<Map<String, String>> _delivery = [
    {
      "name": "مرسول",
      "link":
          "https://apps.apple.com/sa/app/mrsool-app-%D8%AA%D8%B7%D8%A8%D9%8A%D9%82-%D9%85%D8%B1%D8%B3%D9%88%D9%84/id1040038773"
    },
    {
      "name": "جاهز",
      "link": "https://apps.apple.com/sa/app/jahez/id1137352156"
    },
    {
      "name": "تويو",
      "link": "https://apps.apple.com/sa/app/toyou-delivery-more/id1196302015"
    },
    {
      "name": "ذا شيفز",
      "link":
          "https://apps.apple.com/sa/app/the-chefz-fast-food-delivery/id1139450244"
    },
    {
      "name": "هنجرستيشن",
      "link": "https://apps.apple.com/sa/app/hungerstation/id596011949"
    },
    {"name": "كوفي", "link": "https://apps.apple.com/sa/app/cofe/id1339438881"},
    {
      "name": "نينجا",
      "link":
          "https://apps.apple.com/sa/app/ninja-%D9%86%D9%8A%D9%86%D8%AC%D8%A7/id1620153149"
    },
  ];

  final List _logo = [
    'https://play-lh.googleusercontent.com/C5Da8MqdVedd3-M-aIWsjc0R1DOINMJBsV7nZezLH-dztbRVQudLc9DjFk8vciGzx7A',
    'https://play-lh.googleusercontent.com/vo3LYx5f9xGcGD_23tnXYLtbShsTveRpKslOiB14QOu95I9A2OkB2wTB_ORd2-RB1E4',
    'https://play-lh.googleusercontent.com/kpsFwUFQNVUNvG4EgOw06N_wOBjuUIiiYa04fhFQftLCkmWU0lww8ERMhSOfO_akDo8',
    'https://play-lh.googleusercontent.com/eABRCczeTa3UJSc_Y6_R5NhSNtu_5fqz459WzBv9LvIEGvYp2KBw35fW2EXiZkpnkQyL',
    'https://play-lh.googleusercontent.com/lxqIY6ukgrD2T6pVzGL9W7851Vll4xKrADJOl8gLOTVps9ZGUa3Z88DPrCXgAJ7TrZ8Y',
    'https://play-lh.googleusercontent.com/GqxOM5eaPP7EURgZVIT4bFd6JOcX8gQ9lYMn8Wo3BybquerqZY4bAYWTGfquhhYTWRv5',
    'https://play-lh.googleusercontent.com/B2dbsTz6ey1BxzGqQAkmeAJzwRuEHj6LZ7vzmx9cWCEQiGS18dGa76bRDS9CAzqtiw',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "تطبيقات التوصيل",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 35,
                  color: Color.fromRGBO(40, 87, 69, 1),
                )),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: _delivery.length,
        itemBuilder: (context, index) {
          final app = _delivery[index];
          return ServicesItemAR(
            name: app["name"]!,
            link: _logo[
                index], // يجب أن تضيف الأيقونات المناسبة لكل تطبيق هنا بنفس ترتيب القائمة
            link2: app["link"]!,
          );
        },
      ),
    );
  }
}

class PharmacyListAR extends StatefulWidget {
  const PharmacyListAR({super.key});

  @override
  State<PharmacyListAR> createState() => _PharmacyListARState();
}

class _PharmacyListARState extends State<PharmacyListAR> {
  final List<Map<String, String>> _pharmacies = [
    {"name": "صيدلية النهدي", "link": "https://www.nahdionline.com/ar/"},
    {"name": "صيدلية الدواء", "link": "https://www.al-dawaa.com"},
    {
      "name": "صيدلية ليمون",
      "link":
          "https://www.lemon.sa/index.php?route=product/category&path=20&tracking=5f1d3274a4130&gclid=EAIaIQobChMI47-99v-EhQMVarGDBx2ASQbsEAAYASAAEgJY7fD_BwE"
    },
    {"name": "صيدلية اورانج", "link": "https://orangepharmacy.sa"},
    {
      "name": "صيدلية كنوز",
      "link":
          "https://www.kunooz.com/ar/page/offers?gad_source=1&gclid=EAIaIQobChMIxNH2hoCFhQMV4QkGAB0hnADIEAAYASAAEgJlHvD_BwE"
    },
    {
      "name": "صيدلية وايتس",
      "link":
          "https://www.whites.net/ar/page/offers?utm_source=google&utm_medium=cpc&utm_campaign=Acquisit_Whites_GSN_loc-All_lan-AR_brand_Web&utm_content=Acquisit_Whites_GSN_loc-KSA_lan-AR_brand&utm_term=وايتس&gclid=EAIaIQobChMIu4O_jYCFhQMVVpeDBx3uXAzyEAAYASAAEgKNUfD_BwE"
    },
    {"name": "صيدلية بوتس", "link": "https://sa.boots.com/ar/"},
    {"name": "صيدلية آدم", "link": "https://www.adamonline.com/ar"},
    {"name": "صيدلية انوفا", "link": "https://www.innovaonline.sa"},
  ];

  final List _logo = [
    'https://play-lh.googleusercontent.com/e25Mhhn6PzECbvUM3T_TlRwwXxXVruOQLDqmMRER-kFaocRrRS-FYcWeagd354DjYl8',
    'https://s3-symbol-logo.tradingview.com/aldawaa-medical-services-co--600.png',
    'https://play-lh.googleusercontent.com/x23bJauoMdVfeJQwV0V9Q9tERu6ritLwHFfGrmW-RgJxljOmMIM_SRsNjkiFfV8srLNs',
    'https://play-lh.googleusercontent.com/wb5mQbf7vTDv_7UE_p5Dmh8GlXCvNv5vsrghwtNlp0z-R61Z-sFbdggiWB1SDNI-Ve1G=w240-h480-rw',
    'https://play-lh.googleusercontent.com/x5hgaleZxoktMRcsBfxIANIw8S2Gqb3Z5j-DUKHhlxEnH9j9cTh-DE7bc5Oh1OJw0kQM',
    'https://media.licdn.com/dms/image/C4E0BAQFDjPWXmQYedg/company-logo_200_200/0/1648988566391?e=2147483647&v=beta&t=8I-onH64V5j-9JE0EXix__NeDC1wI30xjtZJ-6WHk04',
    'https://play-lh.googleusercontent.com/PjGCSjJ10LX-AI_H7qiUV4qGUuvoLz7HobhdNl-cclN72QtBMHBk823KbsLmQsH9qWi2',
    'https://media.licdn.com/dms/image/C4E0BAQGWJxuQVKZ25Q/company-logo_200_200/0/1616275541036?e=2147483647&v=beta&t=wEafJ2VE-ot7mqeu9O-cc7x2ynFIFQrxr4osMZyQAeQ',
    'https://play-lh.googleusercontent.com/mH3o5tNit6o_7q_6UiSf8cSem-QRDJWjaQhbQAmyrq084bve0V3val9UTMYkuU6HVXg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "الصيدليات",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 35,
                  color: Color.fromRGBO(40, 87, 69, 1),
                )),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: _pharmacies.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => _launchURL(_pharmacies[index]["link"]!),
              child: ServicesItemAR(
                name: _pharmacies[index]["name"]!,
                link: _logo[index],
                link2: _pharmacies[index]["link"]!,
              ),
            );
          }),
    );
  }

  void _launchURL(String url) async {
    if (!await launch(url)) {
      throw 'Could not launch $url';
    }
  }
}

class LaundryListAR extends StatefulWidget {
  const LaundryListAR({super.key});

  @override
  State<LaundryListAR> createState() => _LaundryListARState();
}

class _LaundryListARState extends State<LaundryListAR> {
  final List<Map<String, String>> _laundry = [
    {
      "name": "غسيلي",
      "link":
          "https://apps.apple.com/sa/app/%D8%B4%D8%B1%D9%83%D8%A9-%D8%BA%D8%B3%D9%8A%D9%84%D9%8A/id1644682418"
    },
    {
      "name": "غسيل اكسبرس",
      "link":
          "https://apps.apple.com/sa/app/gaseelexpress-%D8%BA%D8%B3%D9%8A%D9%84-%D8%A7%D9%83%D8%B3%D8%A8%D8%B1%D8%B3/id1560146195"
    },
    {
      "name": "فقاعة غسيل",
      "link":
          "https://apps.apple.com/sa/app/%D9%81%D9%82%D8%A7%D8%B9%D8%A9-%D8%BA%D8%B3%D9%8A%D9%84-%D8%B7%D9%84%D8%A8%D8%A7%D8%AA-%D8%A7%D9%88%D9%86-%D9%84%D8%A7%D9%8A%D9%86/id1406871224"
    },
    {
      "name": "مغسلة الجبر",
      "link": "https://apps.apple.com/sa/app/aljabr-laundry/id1581997861"
    },
    {
      "name": "مغسلة ببلز",
      "link":
          "https://apps.apple.com/sa/app/bubbles-laundry-%D9%85%D8%BA%D8%A7%D8%B3%D9%84-%D8%A8%D8%A8%D9%84%D8%B2/id1570661021"
    },
  ];

  final List _logo = [
    'https://play-lh.googleusercontent.com/eAt6_-7o0W_QLiOTwBvKn3VYU9QOfKLAj8y2DQ_kHFYThVw97sgk-l2rjlmcXQ1cBic',
    'https://play-lh.googleusercontent.com/CUleurtoF0mIY1ZM_QYFeJnBYA4vE14ArlsUoDXLlW1Ms9y4Fsbg8xZHeeAmqv2uLA',
    'https://is3-ssl.mzstatic.com/image/thumb/Purple115/v4/3b/88/a0/3b88a0d8-4817-81df-010e-536a0171353c/AppIcon-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-7.png/512x512bb.jpg',
    'https://pbs.twimg.com/profile_images/1527235986433908736/3PG3j9oC_400x400.jpg',
    'https://play-lh.googleusercontent.com/pp94A2oR4gLiEb1YF3Nkwkdc-YAcubBrQSvh0Q16ZyVxS3EYtutBGaW9Pl1xv0xyGis',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "غسيل الملابس",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 35,
                  color: Color.fromRGBO(40, 87, 69, 1),
                )),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: _laundry.length,
          itemBuilder: (context, index) {
            final laundry = _laundry[index];
            return ServicesItemAR(
              name: laundry["name"]!,
              link: _logo[index],
              link2: laundry["link"]!,
            );
          }),
    );
  }
}

class EmergencyContactAR extends StatefulWidget {
  const EmergencyContactAR({super.key});

  @override
  State<EmergencyContactAR> createState() => _EmergencyContactARState();
}

class _EmergencyContactARState extends State<EmergencyContactAR> {
  final List _emName = [
    "رقم العمليات الأمنية",
    "الإسعاف",
    "خدمات السياح",
    "نجم",
  ];

  final List _emNum = ["911", "997", "930", "920000560"];

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {
      throw 'Could not launch $launchUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        title: const Text(
          "أرقام الطوارئ",
          style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(40, 87, 69, 1),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 35,
                  color: Color.fromRGBO(40, 87, 69, 1),
                )),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: _emName.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => _makePhoneCall(_emNum[index]),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: 320,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(3, 3),
                          spreadRadius: 2,
                          blurRadius: 2)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: const Color.fromRGBO(40, 87, 69, 1), width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        _emNum[index],
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        _emName[index],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
