import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FAQScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var b=MediaQuery.of(context).platformBrightness;
    bool isDark=b==Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: isDark?Colors.white:Colors.black87,
        ),
        title: Text(
          "FAQs",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              color: isDark?Colors.white:Colors.black,
              letterSpacing: 2
          ),
        ),
        centerTitle: true,
        backgroundColor: isDark?Colors.black38:Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ExpansionTile(
              title: Text(
                "What is corona virus?",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Corona viruses are a large family of viruses which may cause illness" +
                        "in animals or humans. In humans, several coronaviruses are known" +
                        "to cause respiratory infections ranging from the common cold to more" +
                        "severe diseases such as Middle East Respiratory Syndrome (MERS)" +
                        "and Severe Acute Respiratory Syndrome (SARS). The most recently" +
                        "discovered coronavirus causes coronavirus disease COVID-19.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
          Card(
            child: ExpansionTile(
              title: Text(
                "What is COVID-19?",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "COVID-19 is the infectious disease caused by the most recently" +
                        "discovered corona virus. This new virus and disease were unknown" +
                        "before the outbreak began in Wuhan, China, in December 2019.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
          Card(
            child: ExpansionTile(
              title: Text(
                "What are the symptoms of COVID-19?",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "The most common symptoms of COVID-19 are fever, tiredness, and"
                            "dry cough. Some patients may have aches and pains, nasal" +
                        "congestion, runny nose, sore throat or diarrhea. These symptoms are" +
                        "usually mild and begin gradually. Some people become infected but" +
                        "don’t develop any symptoms and don't feel unwell. Most people" +
                        "(about 80%) recover from the disease without needing special" +
                        "treatment. Around 1 out of every 6 people who gets COVID-19" +
                        "becomes seriously ill and develops difficulty breathing. Older people," +
                        "and those with underlying medical problems like high blood pressure," +
                        "heart problems or diabetes, are more likely to develop serious illness." +
                        "People with fever, cough and difficulty breathing should seek medical" +
                        "attention",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
          Card(
            child: ExpansionTile(
              title: Text(
                "How does COVID-19 spread?",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "People can catch COVID-19 from others who have the virus. The"
                    "disease can spread from person to person through small droplets from"
                    "the nose or mouth which are spread when a person with COVID-19"
                    "coughs or exhales. These droplets land on objects and surfaces"
                    "around the person. Other people then catch COVID-19 by touching"
                    "these objects or surfaces, then touching their eyes, nose or mouth."
                    "People can also catch COVID-19 if they breathe in droplets from a"
                    "person with COVID-19 who coughs out or exhales droplets. This is"
                    "why it is important to stay more than 1 meter (3 feet) away from a"
                    "person who is sick.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
          Card(
            child: ExpansionTile(
              title: Text(
                "Can the virus that causes COVID-19 be transmitted through the air?",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Studies to date suggest that the virus that causes COVID-19 is mainly "
                    "transmitted through contact with respiratory droplets rather than "
                    'through the air. See previous answer on “How does COVID-19 '
                    'spread?”',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
          Card(
            child: ExpansionTile(
              title: Text(
                "Can CoVID-19 be caught from a person who has no symptoms?",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "The main way the disease spreads is through respiratory droplets "
                    "expelled by someone who is coughing. The risk of catching COVID-19 "
                    "from someone with no symptoms at all is very low. However, many "
                    "people with COVID-19 experience only mild symptoms. This is "
                    "particularly true at the early stages of the disease. It is therefore "
                    "possible to catch COVID-19 from someone who has, for example, just "
                    "a mild cough and does not feel ill.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
          Card(
            child: ExpansionTile(
              title: Text(
                "Can I catch COVID-19 from the feces of someone with the disease?",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "The risk of catching COVID-19 from the feces of an infected person "
                    "appears to be low. While initial investigations suggest the virus may "
                    "be present in feces in some cases, spread through this route is not a "
                    "main feature of the outbreak. The ongoing research on the ways "
                    "COVID-19 is spread and will continue to share new findings. Because "
                    "this is a risk, however, it is another reason to clean hands regularly "
                    "after using the bathroom and before eating.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
          Card(
            child: ExpansionTile(
              title: Text(
                "What can I do to protect myself and prevent the spread of disease?",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Stay aware of the latest information on the COVID-19 outbreak, "
                    "available on the national,state and local public health authority. Many "
                    "countries around the world have seen cases of COVID-19 and several "
                    "have seen outbreaks. Authorities in China and some other countries "
                    "have succeeded in slowing or stopping their outbreaks. However, the "
                    "situation is unpredictable so check regularly for the latest news.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
          Card(
            child: ExpansionTile(
              title: Text(
                "How likely am I to catch COVID-19?",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "The risk depends on where you are - and more specifically, whether "
                    "there is a COVID-19 outbreak unfolding there.\n"
                    "For most people in most locations the risk of catching COVID-19 is "
                    "still low. However, there are now places around the world (cities or"
                    "areas) where the disease is spreading. For people living in, or visiting,"
                    "these areas the risk of catching COVID-19 is higher. Governments "
                    "and health authorities are taking vigorous action every time a new "
                    "case of COVID-19 is identified. Be sure to comply with any local "
                    "restrictions on travel, movement or large gatherings. Cooperating with "
                    "disease control efforts will reduce your risk of catching or spreading "
                    "COVID-19.\n"
                    "COVID-19 outbreaks can be contained and transmission stopped, as "
                    "has been shown in China and some other countries. Unfortunately,"
                    "new outbreaks can emerge rapidly. It’s important to be aware of the "
                    "situation where you are or intend to go.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
          Card(
            child: ExpansionTile(
              title: Text(
                "Should I worry about COVID-19?",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Illness due to COVID-19 infection is generally mild, especially for "
                    "children and young adults. However, it can cause serious illness:"
                  "about 1 in every 5 people who catch it need hospital care. It is "
                  "therefore quite normal for people to worry about how the COVID-19 "
                  "outbreak will affect them and their loved ones. "
                  "We can channel our concerns into actions to protect ourselves, our "
                    "loved ones and our communities. First and foremost among these "
                    "actions is regular and thorough hand-washing and good respiratory "
                    "hygiene. Secondly, keep informed and follow the advice of the local "
                  "health authorities including any restrictions put in place on travel, "
                    "movement and gatherings. " ,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
          Card(
            child: ExpansionTile(
              title: Text(
                "Who is at risk of developing severe illness?",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "While we are still learning about how COVID-2019 affects people, "
    "older persons and persons with pre-existing medical conditions (such "
    "as high blood pressure, heart disease, lung disease, cancer or "
    "diabetes) appear to develop serious illness more often than others.",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 16.0),
                      textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
          Card(
            child: ExpansionTile(
              title: Text(
                "Are antibiotics effective in preventing or treating the COVID-19?",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "No. Antibiotics do not work against viruses, they only work on "
                  "bacterial infections. COVID-19 is caused by a virus, so antibiotics do "
                  "not work. Antibiotics should not be used as a means of prevention or "
                  "treatment of COVID-19. They should only be used as directed by a "
                    "physician to treat a bacterial infection." ,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
          Card(
            child: ExpansionTile(
              title: Text(
                "Are there any medicines or therapies that can prevent or cure COVID-19?",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "While some western, traditional or home remedies may provide "
                  "comfort and alleviate symptoms of COVID-19, there is no evidence "
                    "that current medicine can prevent or cure the disease. We does not "
                  "recommend self-medication with any medicines, including antibiotics, "
                    "as a prevention or cure for COVID-19. However, there are several "
                  "ongoing clinical trials that include both western and traditional "
                    "medicines. We will continue to provide updated information as soon "
                    "as clinical findings are available. " ,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 16.0),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
