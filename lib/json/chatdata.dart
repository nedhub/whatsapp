import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

const List profile = [
  {
    "name": "Kate",
    "img":
        "https://i.pinimg.com/474x/e5/57/59/e55759b07d58efed5655cd8bced390ec.jpg"
  }
];

const List chat_data = [
  {
    "img":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fthumb%2F7%2F7c%2FOld_man%252C_Bihar%252C_India.jpg%2F682px-Old_man%252C_Bihar%252C_India.jpg&f=1&nofb=1",
    "name": "John Carrol",
    "text": "Yes, got it. Thanks for your contacting.",
    "date": "10/8/20"
  },
  {
    "img":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.flixist.com%2Fwp-content%2Fuploads%2F2020%2F10%2Fpromising-young-woman.jpg&f=1&nofb=1",
    "name": "Mondelez Monte",
    "text": "going to sleep now",
    "date": "6/10/20"
  },
  {
    "img":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.istockphoto.com%2Fphotos%2Fhispanic-fifty-something-woman-picture-id533610307%3Fk%3D6%26m%3D533610307%26s%3D170667a%26w%3D0%26h%3DY8igLwuRJTkYmpCVWAI6HS46i97W1TTPotgKWvnVeBE%3D&f=1&nofb=1",
    "name": "Jacob Hughes",
    "text": "Have a nice day, Sopheamen 😁",
    "date": "10/6/20"
  },
  {
    "img":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.istockphoto.com%2Fphotos%2Fsteampunk-woman-looking-over-her-goggles-picture-id532418039%3Fk%3D6%26m%3D532418039%26s%3D170667a%26w%3D0%26h%3D7_RGPFvZKJ7V1CdroSYyHnTT-xJivwW2Wj-zDD8fgm0%3D&f=1&nofb=1",
    "name": "Steve Mings",
    "text": "How is everthing?",
    "date": "11/5/20"
  },
  {
    "img":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fak6.picdn.net%2Fshutterstock%2Fvideos%2F32965006%2Fthumb%2F9.jpg&f=1&nofb=1",
    "name": "Annabelle Mary",
    "text": "ok",
    "date": "2/28/20"
  },
  {
    "img":
        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fassets.entrepreneur.com%2Fcontent%2F3x2%2F1300%2F20151021183642-woman-leaders-leader-in-charge-business-meeting.jpeg&f=1&nofb=1",
    "name": "James Hunt",
    "text": "take care! speak soon :)",
    "date": "6/1/20"
  }
];

List setting_section_one = [
  {"icon": Icons.star, "text": "Starred Messages", "color": Colors.yellow[700]},
  {
    "icon": Icons.laptop,
    "text": "WhatsApp Web/Desktop",
    "color": Colors.green[800]
  },
];

List setting_section_two = [
  {"icon": Icons.lock, "text": "Account", "color": Colors.blue[700]},
  {"icon": Icons.chat_bubble, "text": "Chats", "color": Colors.green},
  {
    "icon": Icons.notification_important,
    "text": "Notifications",
    "color": Colors.redAccent
  },
  {
    "icon": LineIcons.database,
    "text": "Storage and Data",
    "color": Colors.green
  },
];

List setting_section_three = [
  {"icon": Icons.info_outline, "text": "Help", "color": Colors.blue[600]},
  {
    "icon": Icons.favorite_rounded,
    "text": "Tell a Friend",
    "color": Colors.red[400]
  },
];

const List messages = [
  {
    "isMe": true,
    "message": "Hey friend, How are you doing?",
    "time": "1:40 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "good to know you are well.",
    "time": "1:40 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "you can sing.",
    "time": "1:41 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "okay friend,",
    "time": "1:41 PM",
    "isLast": true,
  },
  {
    "isMe": false,
    "message": "Good ey friend",
    "time": "2:42 PM",
    "isLast": false,
  },
  {
    "isMe": false,
    "message": "jam sing 2 nak",
    "time": "2:44 PM",
    "isLast": false,
  },
  {
    "isMe": false,
    "message": "good nas",
    "time": "2:45 PM",
    "isLast": false,
  },
  {
    "isMe": false,
    "message": "Hi frienddd.",
    "time": "2:46 PM",
    "isLast": true,
  },
  {
    "isMe": true,
    "message": "yes, hey again Sophal",
    "time": "1:40 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "Let me try to call you tomorrow.",
    "time": "1:40 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "Next time pel tenh tam me tov",
    "time": "1:41 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "Order tam me tov",
    "time": "1:41 PM",
    "isLast": true,
  },
  {
    "isMe": false,
    "message": "Orkun friend",
    "time": "2:42 PM",
    "isLast": false,
  },
  {
    "isMe": false,
    "message": "me banh song fri venh ai",
    "time": "2:44 PM",
    "isLast": false,
  },
  {
    "isMe": false,
    "message": "orkun nas friend",
    "time": "2:45 PM",
    "isLast": false,
  },
  {
    "isMe": false,
    "message": "all the best na!!!",
    "time": "2:46 PM",
    "isLast": true,
  },
  {
    "isMe": true,
    "message": "Wow, niceee",
    "time": "1:40 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "Yes very good",
    "time": "1:40 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "No worries, all the best",
    "time": "1:41 PM",
    "isLast": false,
  },
  {
    "isMe": true,
    "message": "talk to you soon.",
    "time": "1:41 PM",
    "isLast": true,
  },
];
