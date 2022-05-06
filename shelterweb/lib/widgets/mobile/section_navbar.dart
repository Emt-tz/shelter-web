import 'package:flutter/material.dart';

class MobileNavSection extends StatefulWidget {
  final bool navSearchVisibility;
  const MobileNavSection({Key? key, required this.navSearchVisibility})
      : super(key: key);

  @override
  _MobileNavSectionState createState() => _MobileNavSectionState();
}

class _MobileNavSectionState extends State<MobileNavSection> {
  //for the scroll bar
  final ScrollController controller = ScrollController();
  //for the nav search
  final TextEditingController SearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //nav bar
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          height: 64,
          // width: MediaQuery.of(context).size.width*0.5,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // logo
              widget.navSearchVisibility
                  ? const SizedBox()
                  : const Text(
                      "Shelter on Demand",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w900),
                    ),
              widget.navSearchVisibility
                  ? const SizedBox()
                  : const SizedBox(
                      width: 0,
                    ),
              // search
              Visibility(
                visible: widget.navSearchVisibility,
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        hintText: 'Select a city',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Visibility(
                visible: widget.navSearchVisibility,
                child: InkWell(
                  hoverColor: Colors.grey[300],
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      "Search",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //spacer
        const Spacer(),
        // currency
        widget.navSearchVisibility
            ? SizedBox()
            : Row(
                children: [
                  // InkWell(
                  //   hoverColor: Colors.grey[300],
                  //   borderRadius: BorderRadius.circular(30),
                  //   onTap: () {},
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     height: 45,
                  //     width: 100,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(30),
                  //     ),
                  //     child: const Text("USD (\$)"),
                  //   ),
                  // ),
                  // // language
                  // InkWell(
                  //   hoverColor: Colors.grey[300],
                  //   borderRadius: BorderRadius.circular(30),
                  //   onTap: () {},
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     height: 45,
                  //     width: 100,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(30),
                  //     ),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: const [
                  //         Icon(Icons.language),
                  //         SizedBox(
                  //           width: 5,
                  //         ),
                  //         Text("English"),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // // auth
                  // //login
                  // InkWell(
                  //   hoverColor: Colors.grey[300],
                  //   borderRadius: BorderRadius.circular(30),
                  //   onTap: () {},
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     height: 45,
                  //     width: 100,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(30),
                  //     ),
                  //     child: const Text("Log in"),
                  //   ),
                  // ),
                  // //sign up
                  // InkWell(
                  //   hoverColor: Colors.grey[300],
                  //   borderRadius: BorderRadius.circular(30),
                  //   onTap: () {},
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     height: 45,
                  //     width: 100,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(30),
                  //     ),
                  //     child: const Text(
                  //       "Sign up",
                  //       style: TextStyle(fontWeight: FontWeight.bold),
                  //     ),
                  //   ),
                  // ),
                  // menu
                  Theme(
                    data: Theme.of(context).copyWith(
                      //highlightColor: Colors.red,
                      splashColor: Colors.transparent,
                    ),
                    child: PopupMenuButton(
                      child: Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 80,
                        child: const Icon(Icons.menu, size: 22),
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      color: Colors.white,
                      elevation: 20,
                      enabled: true,
                      onCanceled: () {
                        //do something
                      },
                      offset: const Offset(-30, 40),
                      itemBuilder: (context) => [
                        const PopupMenuItem(
                          child: Text(
                            "About us",
                          ),
                          value: "about",
                        ),
                        const PopupMenuItem(
                          child: Text(
                            "Become a Host",
                          ),
                          value: "host",
                        ),
                        const PopupMenuItem(
                          child: Text(
                            "Support",
                          ),
                          value: "support",
                        ),
                        const PopupMenuItem(
                          child: Text(
                            "Blog",
                          ),
                          value: "blog",
                        ),
                        const PopupMenuItem(
                          child: Text(
                            "Help",
                          ),
                          value: "help",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
