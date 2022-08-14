import 'package:flutter/material.dart';

class TOC extends StatelessWidget {
  const TOC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Terms & Conditions",
            style: TextStyle(
                color: Color.fromARGB(0xff, 0x00, 0x7a, 0xff),
                fontSize: 34,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(0xff, 0xf8, 0xf8, 0xf8),
          elevation: 0.8,
          iconTheme: const IconThemeData(color:Colors.black),
        ),
        body: const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Text(
            "Welcome to EB Pearls!\n" +
                "These terms and conditions outline the rules and regulations for the use of Company Name's Website, located at Website.com.\n" +
                "By accessing this website we assume you accept these terms and conditions. Do not continue to use Website Name if you do not agree to take all of the terms and conditions stated on this page.\n" +
                "The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: “Client”, “You” and “Your” refers to you, the person log on this website and compliant to the Company's terms and conditions. “The Company”, “Ourselves”, “We”, “Our” and “Us”, refers to our Company. “Party”, “Parties”, or “Us”, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client's needs in respect of provision of the Company's stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.\n" +
                "Cookies\n" +
                "We employ the use of cookies. By accessing Website Name, you agreed to use cookies in agreement with the Company Name's Privacy Policy.\n" +
                "Most interactive websites use cookies to let us retrieve the user's details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.\n" +
                "License\n" +
                "Unless otherwise stated, Company Name and/or its licensors own the intellectual property rights for all material on Website Name. All intellectual property rights are reserved. You may access this from Website Name for your own personal use subjected to restrictions set in these terms and conditions.\n" +
                "You must not:\n" +
                "Republish material from Website Name\n" +
                "Sell, rent or sub-license material from Website Name\n" +
                "Reproduce, duplicate or copy material from Website Name\n" +
                "Redistribute content from Website Name\n" +
                "This Agreement shall begin on the date hereof.\n" +
                "Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Company Name does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Company Name,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Company Name shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.\n" +
                "Company Name reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.\n" +
                "You warrant and represent that:\n" +
                "You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;\n" +
                "The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;\n" +
                "The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy\n" +
                "The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.\n",
            style: TextStyle(fontSize: 14, fontStyle: FontStyle.normal),
          ),
        ));
  }
}
