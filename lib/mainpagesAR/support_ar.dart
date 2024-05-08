// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SupportAR extends StatefulWidget {
  const SupportAR({Key? key}) : super(key: key);

  @override
  _SupportARState createState() => _SupportARState();
}

class _SupportARState extends State<SupportAR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الدعم'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildExpansionTile(
              'كيف يمكنني الحصول على تأشيرة دخول إلى الرياض؟',
              'يجب على السائحين الحصول على تأشيرة دخول سارية المفعول لدخول المملكة العربية السعودية. يمكنكم التقدم بطلب التأشيرة من خلال السفارات السعودية أو القنصليات أو عبر المواقع الرسمية للتأشيرات الإلكترونية.',
            ),
            SizedBox(height: 10,),
            _buildExpansionTile(
              'ما هي أفضل الأماكن للإقامة في الرياض؟',
              'تختلف الخيارات حسب تفضيلات الزائرين وميزانيتهم، ولكن بعض أفضل الفنادق في الرياض تشمل: فندق الفيصلية ريجنسي، وفندق الفورسيزونز، وفندق الرافال كورت يارد.',
            ),
            SizedBox(height: 10,),
            _buildExpansionTile(
              'كيف يمكنني الحصول على وسائل النقل العامة في الرياض؟',
              'يمكنك استخدام خدمات النقل العامة مثل الحافلات والتاكسي للتنقل في الرياض. يمكنك شراء بطاقات النقل أو دفع رسوم الركوب نقدًا.',
            ),
            SizedBox(height: 10,),
            _buildExpansionTile(
              'ما هي الأنشطة السياحية الرئيسية التي يجب أن أقوم بها في الرياض؟',
              'يشمل برنامج الزيارة السياحية في الرياض زيارة معالم مثل قصر المصمك والمتحف الوطني ومركز الملك عبدالعزيز التاريخي، بالإضافة إلى التسوق في الأسواق التقليدية وتذوق المأكولات الشعبية.',
            ),
            SizedBox(height: 10,),
            _buildExpansionTile(
              'هل يوجد أماكن للتسوق الشعبية أو الأسواق التقليدية في الرياض؟',
              'نعم، يمكنك زيارة سوق العليا وسوق الجنادرية لتجربة التسوق التقليدي وشراء السلع اليدوية والهدايا التذكارية من المنطقة.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpansionTile(String title, String content) {
    return Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.amber),
        borderRadius: BorderRadius.circular(15)
      ),
      child: ExpansionTile(
        title: Text(title, textAlign: TextAlign.center,),
        children: <Widget>[
          ListTile(
            title: Text(content, textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
}



class SupportEN extends StatefulWidget {
  const SupportEN({Key? key}) : super(key: key);

  @override
  _SupportENState createState() => _SupportENState();
}

class _SupportENState extends State<SupportEN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Support'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildExpansionTile(
              'How can I obtain a visa to enter Riyadh?',
              'Tourists must obtain a valid entry visa to enter the Kingdom of Saudi Arabia. You can apply for the visa through Saudi embassies or consulates, or via the official websites for electronic visas.',
            ),
            _buildExpansionTile(
              'What are the best accommodation options in Riyadh?',
              'Accommodation options vary depending on the preferences and budget of visitors, but some of the best hotels in Riyadh include: The Faisaliah Regency Hotel, The Four Seasons Hotel, and The Raffles Courtyard.',
            ),
            _buildExpansionTile(
              'How can I access public transportation in Riyadh?',
              'You can use public transportation services such as buses, and taxis to get around Riyadh. You can purchase transport cards or pay cash fares.',
            ),
            _buildExpansionTile(
              'What are the main tourist activities to do in Riyadh?',
              'The tourist itinerary in Riyadh includes visiting landmarks such as the Masmak Fortress, the National Museum, and the King Abdulaziz Historical Center, in addition to shopping in traditional markets and sampling popular cuisine.',
            ),
            _buildExpansionTile(
              'Are there popular shopping places or traditional markets in Riyadh?',
              'Yes, you can visit Al-Olaya Market and Al-Janadriyah Market to experience traditional shopping and purchase handmade goods and souvenirs from the area.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpansionTile(String title, String content) {
    return Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.amber),
        borderRadius: BorderRadius.circular(15)
      ),
      child: ExpansionTile(
        title: Text(title, textAlign: TextAlign.center,),
        children: <Widget>[
          ListTile(
            title: Text(content, textAlign: TextAlign.center,),
          ),
        ],
      ),
    );
  }
}
