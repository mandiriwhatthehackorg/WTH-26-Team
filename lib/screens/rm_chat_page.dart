import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mandiri_wth/screens/video_call_page.dart';
import 'package:mandiri_wth/utils/size_config.dart';

class RmChatPage extends StatefulWidget {
  final String name;

  RmChatPage(this.name);

  @override
  _RmChatPageState createState() => _RmChatPageState();
}

class _RmChatPageState extends State<RmChatPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffb700),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.call,
              color: Color(0xff003d79),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.videocam,
              color: Color(0xff003d79),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => VideoCallPage(
                    channelName: "juvetic",
                  ),
                ),
              );
            },
          ),
        ],
        title: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 16),
              child: Container(
                padding: EdgeInsets.all(1.0),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40 / 2),
                ),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
                  placeholder: (context, url) =>
                      new CircularProgressIndicator(),
                  errorWidget: (context, url, error) => new Icon(Icons.error),
                ),
              ),
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        widget.name,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xff003d79),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Last seen in few seconds',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff003d79),
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(),
          ),
          Container(
            color: Color(0xffffb700),
            child: Stack(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 8, bottom: 8, left: 16, right: 4),
                          height: SizeConfig.blockSizeVertical * 6,
                          child: TextField(
                            textAlign: TextAlign.left,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Type a message...',
                              hintStyle: TextStyle(fontSize: 16),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {},
                                child: new Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Image(
                                    image: AssetImage(
                                      'images/ic_attach.png',
                                    ),
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                              ),
                              filled: true,
                              contentPadding: EdgeInsets.all(16),
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 4),
                        child: IconButton(
                            icon: ImageIcon(
                              AssetImage('images/ic_sent.png'),
                              color: Color(0xff003d79),
                            ),
                            onPressed: () {}),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _chatPopup() => PopupMenuButton<int>(
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: Text("Video Call"),
          ),
          PopupMenuItem(
            value: 2,
            child: Text("Voice Call"),
          ),
        ],
      );
}
