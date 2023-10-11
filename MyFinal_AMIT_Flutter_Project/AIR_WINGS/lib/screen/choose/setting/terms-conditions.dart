import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Terms_Conditions extends StatefulWidget {
  @override
  _Terms_ConditionsState createState() => _Terms_ConditionsState();
}

class _Terms_ConditionsState extends State<Terms_Conditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                // spreadRadius: 6,
                blurRadius: 15,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: AppBar(
            elevation: 0.0,
            bottomOpacity: 0.0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: kBlack,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            centerTitle: true,
            title: Text(
              "Terms & Conditions",
              style: TextStyle(
                color: kBlack,
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
            backgroundColor: kWhite,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: displaySize(context).height * 0.02,
              bottom: displaySize(context).height * 0.02,
              left: displaySize(context).width * 0.02,
              right: displaySize(context).width * 0.02,
            ),
            decoration: BoxDecoration(
              color: kWhite,
            ),
            child: Text(
              "1)  ABOUT US AND HOW TO CONTACT US"
              "\n\nTrip.com is a website and mobile application (“Website”) operated by Trip.com Travel Singapore Pte. Ltd., a limited liability company with its address at 72 Anson Road，#12-01，Anson House, Singapore (079911) (”we”, “our” or “us”). We are a global online travel agency (Singapore travel license no. 02943)."
              "\n\nTo contact us, please email or telephone our customer service team (for our email address and helpline number, please see https://www.trip.com/help). You can also use the service chat on our Website."
              "\n\n2)  ABOUT THESE TERMS"
              "\n\nOur Website assists you in gathering travel information and determining the availability of travel products and services. It also allows you to book flight tickets, hotels, train tickets, car rentals, airport transfers and attraction tickets (“Travel Products”) provided by third party suppliers (“Suppliers”). Depending on what country you are booking in, Travel Products may also include ferry and bus tickets, tours, cruises and trips. We also provide customer support services for bookings made on our Website. These terms apply to these booking services."
              "\n\nWhen you book a Travel Product, your booking is also subject to the relevant Supplier’s terms and conditions (for e.g., the airline’s or the hotel’s terms and conditions). It is important that you read these, as they form a separate legal agreement between you and the relevant Supplier. There is more information on this in each of the Travel Product sections below. If there are any inconsistencies between the Supplier’s term and conditions and these terms, these terms apply."
              "\n\nDifferent terms and conditions (such as cancellation and change rights) apply to different Travel Products, these will be made available to you during your booking process and form part of these terms. You should read them carefully before booking."
              "\n\nThese terms also tell you the rules for using our Website, including the content standards that apply when you upload content to our Website, link to our Website or interact with our Website in any other way."
              "\n\nThese terms also tell you the rules for using our Website, including the content standards that apply when you upload content to our Website, link to our Website or interact with our Website in any other way."
              "\n\nBy using our Website and/or completing a booking with us, you confirm that you accept these terms and any relevant Supplier’s terms and conditions, and that you agree to comply with them. We recommend that you read these terms carefully (in particular section 10 on liability) and print a copy for future reference. If there is anything within these terms that you do not understand, please contact us using the details in section 1. If you do not agree to these terms, you must not use our Website or complete a booking with us."
              "\n\nYou warrant that you have capacity to enter into a legally binding contract (including being at least the required age to have capacity in your country) and that you will only use our Website to make legitimate reservations."
              "\n\nIf you are booking Travel Products for a number of individuals, the first name you provide will be responsible for (i) providing accurate information on the other individuals, (ii) accepting these terms on their behalf and ensuring that they comply with them, (iii) checking the details in the booking confirmation and contacting us immediately if any of the details are incorrect, and (iv) paying the full price of the booking and any additional charges in relation to the booking."
              "\n\nWe may amend these terms from time to time. We will note the date that amendments were last made at the top of these terms, and any amendments will take effect upon posting. Every time you wish to use our Website and/or completing a booking with us, please check these terms to ensure you understand the terms that apply at that time."
              "\n\nReferences to this Website are deemed to include derivatives, including but not limited to linked websites and applications, whether accessed by mobile phone, tablet or other device."
              "\n\n3)  RULES WHEN USING OUR WEBSITE"
              "\n\nWE MAY MAKE CHANGES TO OUR WEBSITE"
              "\n\nWe may update and change our Website from time to time to reflect changes to our services, our users’ needs and our business priorities. We will try to give you reasonable notice of any major changes."
              "\n\nWE MAY SUSPEND OR WITHDRAW OUR WEBSITE"
              "\n\nOur Website is made available free of charge."
              "\n\nWe do not guarantee that our Website, or any content on it, will always be available or be uninterrupted. We may suspend, withdraw, or restrict the availability of all or any part of our Website for business and operational reasons. We will try to give you reasonable notice of any suspension or withdrawal."
              "\n\nThe provision of our Website is reliant on the internet and devices. You fully understand and agree that we will not be liable for any losses suffered by you as a result of our Website not being available due to events, circumstances or causes beyond our reasonable control, including but not limited to internet, system or device instability, computer viruses and hacker attacks."
              "\n\nYou are responsible for providing the necessary equipment (including but not limited to an appropriate device and internet connection) and ensuring that all persons who access our Website through your internet connection are aware of these terms and other applicable terms and conditions, and that they comply with them."
              "\n\nYOUR ACCOUNT DETAILS"
              "\n\nYou warrant that all account information supplied by you is true, accurate, current and complete."
              "\n\nIf you choose, or you are provided with, a user identification code, password or any other piece of information as part of our security procedures, you must treat such information as confidential. You must not disclose it to any third party. You fully understand and agree that we will not be liable for any losses suffered by you as a result of you failing to treat such information as confidential."
              "\n\nWe have the right to disable any user identification code or password, whether chosen by you or allocated by us, at any time, if in our reasonable opinion you have failed to comply with any of these terms."
              "\n\nIf you know or suspect that anyone other than you knows your user identification code or password, you must promptly notify us using the contact details in section 1 of these terms. In this situation, if you have saved your payment details to your account, you will also contact your payment account provider in order to reduce any losses that may occur.  "
              "\n\nHOW YOU MAY USE MATERIAL ON OUR WEBSITE "
              "\n\nWe are the owner or the licensee of all patents, copyright, trade marks, business names and domain names, rights in designs, rights in computer software, database rights and all other intellectual property rights, in each case whether registered or unregistered, in our Website. All such rights are reserved."
              "\n\nYou may print off copies, and may download extracts, of any page(s) from our Website for your personal use and you may draw the attention of others to content posted on our Website."
              "\n\nYou must not modify the paper or digital copies of any materials you have printed off or downloaded in any way, and you must not use any illustrations, photographs, video or audio sequences or any graphics separately from any accompanying text."
              "\n\nOur status (and that of any identified contributors) as the authors of content on our Website must always be acknowledged."
              "\n\nYou must not use any part of the content on our Website for commercial purposes without obtaining a licence to do so from us or our licensors."
              "\n\nIf you print off, copy or download any part of our Website in breach of these terms, your right to use our Website will cease immediately and you must, at our option, return or destroy any copies of the materials you have made."
              "\n\nWE ARE NOT RESPONSIBLE FOR WEBSITES WE LINK TO "
              "\n\nWhere our Website contains links to other sites and resources provided by third parties, these links are provided for your information only. Such links should not be interpreted as approval by us of those linked websites or information you may obtain from them."
              "\n\nWe have no control over the contents of those sites or resources."
              "\n\nUSER-GENERATED CONTENT IS NOT APPROVED BY US  "
              "\n\nThis Website may include information and materials uploaded by other users of the Website, including discussion forums, bulletin boards and review services. This information and these materials have not been verified or approved by us. The views expressed by other users on our Website do not represent our views or values. We expressly exclude our liability for any loss or damage arising from the use of any interactive area by a user in contravention of our content standards below."
              "\n\nIf you wish to complain about information and materials uploaded by other users please contact us using the details in section 1 of these terms."
              "\n\nPROHIBITED USES"
              "\n\nYou may only use our Website for lawful purposes. You may not use our Website:"
              "\n\n• In any way that breaches any applicable local, national or international law or regulation.\n• In any way that is unlawful or fraudulent, or has any unlawful or fraudulent purpose or effect.\n• For the purpose of harming or attempting to harm minors in any way.\n• To send, knowingly receive, upload, download, use or re-use any material which does not comply with our content standards below.\n• To transmit, or procure the sending of, any unsolicited or unauthorised advertising or promotional material or any other form of similar solicitation (spam).\n• To knowingly transmit any data, send or upload any material that contains viruses, trojan horses, worms, time-bombs, keystroke loggers, spyware, adware or any other harmful programs or similar computer code designed to adversely affect the operation of any computer software or hardware."
              "\n\nYou also agree:\n•       Not to reproduce, duplicate, copy or re-sell any part of our Website in contravention with these terms.\n•       Not to access without authority, interfere with, damage or disrupt:\nØ  any part of our Website;\nØ  any equipment or network on which our Website is stored;\nØ  any software used in the provision of our Website; or\nØ  any equipment or network or software owned or used by any third party.\n•       Not interfere or attempt to interfere with the normal operation of our Website or any activity that is conducted on our Website.\n•       Not to take any action that would result in an unreasonably large data load on our Website’s network."
              "\n\nA Contribution must not:\n•       Be defamatory of any person.\n•       Be obscene, offensive, hateful or inflammatory.\n•       Promote sexually explicit material.\n•       Promote violence.\n•       Promote discrimination based on race, sex, religion, nationality, disability, sexual orientation or age.\n•       Infringe any copyright, database right, trade mark or any other intellectual property right of any other person.\n•       Be likely to deceive any person.\n•       Breach any legal duty owed to a third party, such as a contractual duty or a duty of confidence.\n•       Breach any applicable minor protection laws and regulations.\n•       Promote any illegal activity.\n•       Be in contempt of court.\n•       Be threatening, abuse or invade another’s privacy, or cause annoyance, inconvenience or needless anxiety.\n•       Be likely to harass, upset, embarrass, alarm or annoy any other perso\n•       Impersonate any person, or misrepresent your identity or affiliation with any person.\n•       Give the impression that the Contribution emanates from us, if this is not the case.\n•       Advocate, promote, incite any party to commit, or assist any unlawful or criminal act such as (by way of e.g. only) copyright infringement or computer misuse.\n•       Contain a statement which you know or believe, or have reasonable grounds for believing, that members of the public to whom the statement is, or is to be, published are likely to understand as a direct or indirect encouragement or other inducement to the commission, preparation or instigation of acts of terrorism.\n•       Contain any advertising or promote any services or web links to other sites.\n•       Endanger national security or leak state secrets."
              "\n\nWe have no obligation to post your Contributions, and we reserve the right in our absolute discretion to determine which Contributions are published on our Website.\nRIGHTS YOU ARE GIVING US TO USE MATERIAL YOU UPLOAD\nWhen you upload or post content to our Website, you grant us a perpetual, worldwide, non-exclusive, royalty-free, transferable licence to use, reproduce, distribute, prepare derivative works of and display such content in connection with the services provided by the Website and across different media, including the use of such content to promote the Website and/or the services. You also grant us the right to take legal action against any infringement of your or our rights in the content. To the extent possible, you expressly waive any and all “moral rights” (including rights of attribution or integrity) that may subsist in your content and agree that you have no objection to the publication, use, modification, deletion or exploitation of your content by us.\n\nIf you believe that any of the content of our Website breaches your intellectual property rights, please contact us using the details in section 1 of these terms.\nWE ARE NOT RESPONSIBLE FOR VIRUSES AND YOU MUST NOT INTRODUCE THEM\n\nWe do not guarantee that our Website will be secure or free from bugs or viruses.\n\nYou are responsible for configuring your information technology, computer programmes and platform to access our Website. You should use your own virus protection software.\n\nYou must not misuse our Website by knowingly introducing viruses, trojans, worms, logic bombs or other material that is malicious or technologically harmful. You must not attempt to gain unauthorised access to our Website, the server on which our Website is stored or any server, computer or database connected to our Website. You must not attack our Website via a denial-of-service attack or a distributed denial-of service attack.\n\nRULES ABOUT LINKING TO OUR WEBSITE\n\nYou may link to our home page, provided you do so in a way that is fair and legal and does not damage our reputation or take advantage of it.\n\nYou must not establish a link in such a way as to suggest any form of association, approval or endorsement on our part where none exists.\n\nYou must not establish a link to our Website in any website that is not owned by you.\n\nOur Website must not be framed on any other site, nor may you create a link to any part of our Website other than the home page.\n\nWe reserve the right to withdraw linking permission without notice.",
              style: TextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
