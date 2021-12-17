import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:netflix/constants/constants.dart';

commonText({text, color, size, weight}) {
  return Text(
    text,
    style: TextStyle(
      color: color ?? Colors.white,
      fontWeight: weight ?? FontWeight.w500,
      fontSize: size ?? 15,
    ),
  );
}

bannerOptions({icon, text, color}) {
  return Column(
    children: [
      Icon(
        icon,
        color: color ?? Colors.white,
      ),
      commonText(text: text, color: color ?? Colors.white),
    ],
  );
}

bottomNavBar() {
  return BottomNavigationBar(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.white,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
    currentIndex: 0,
    showSelectedLabels: true,
    unselectedItemColor: Colors.grey.shade800,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.video_collection_outlined),
        label: "New & Hot",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.insert_emoticon),
        label: "Fast Laughs",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: "Search",
      ),
      BottomNavigationBarItem(
        icon: Icon(Entypo.down_circled),
        label: "Downloads",
      ),
    ],
  );
}

detailsPageIcons({icon}) {
  return Container(
    height: 35,
    width: 35,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100), color: Colors.black),
    child: Icon(
      icon,
      color: Colors.white,
      size: 21,
    ),
  );
}

detailsPageSymbols({text, color, size, isBorder = false}) {
  return Container(
    height: 17,
    width: 28,
    decoration: BoxDecoration(
      color: color,
      border: isBorder
          ? Border.all(width: 0.8, color: Colors.white70)
          : Border.all(),
      borderRadius: BorderRadius.circular(2),
    ),
    child: Center(
        child: Text(
      text,
      style: TextStyle(fontSize: size),
    )),
  );
}

detailsPageRow({text, bgcolor, color, icon}) {
  return Container(
    height: 40,
    margin: const EdgeInsets.symmetric(horizontal: 20),
    decoration:
        BoxDecoration(color: bgcolor, borderRadius: BorderRadius.circular(5)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color ?? Colors.black,
        ),
        sizedw1,
        Text(
          text,
          style: TextStyle(
              color: color ?? Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18),
        )
      ],
    ),
  );
}

detailsPageUerActions() {
  return Row(
    children: const [
      sizedw2,sizedw2,
      SizedBox(
        height: 60,
        width: 60,
        child: GridTile(
          child: Icon(Icons.add),
          footer: Text(
            "My list",
            textAlign: TextAlign.center,
          ),
        ),
      ),sizedw2,sizedw2,
      SizedBox(
        height: 60,
        width: 60,
        child: GridTile(
          child: Icon(Icons.thumb_up_alt_outlined),
          footer: Text(
            "Like",
            textAlign: TextAlign.center,
          ),
        ),
      ),sizedw2,sizedw2,
      SizedBox(
        height: 60,
        width: 60,
        child: GridTile(
          child: Icon(Icons.send),
          footer: Text(
            "Share",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ],
  );
}