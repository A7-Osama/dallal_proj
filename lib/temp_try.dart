// class FullName {
//   final UserModel _userModel;

//   FullName._(this._userModel);

//   factory FullName.fromUserModel(UserModel userModel) {
//     return FullName._(userModel);
//   }

//   String get fullName => '${_userModel.fName} ${_userModel.mName} ${_userModel.lName}';
// }

// final Map<int, List<CardModel>> cardMap = {
//   0: myAds,
//   1: likedAds,
//   2: favorites,
// };
//   GridView.builder(
//     key: ValueKey<int>(selectedIndex),
//     shrinkWrap: true,
//     physics: const NeverScrollableScrollPhysics(),
//     padding: const EdgeInsets.symmetric(horizontal: 1),
//     gridDelegate: kGridDelegate,
//     itemCount: dummySymbols[selectedIndex].length,
//     itemBuilder: (context, index) {
//       return HCardItem(
//         imgPath: AssetsData.propertyJpg,
//         // symbol: dummySymbols[selectedIndex][index],
//       );
//     },
//   ),

// 🔄 Animated GridView Switcher
// AnimatedSwitcher(
//   duration: const Duration(milliseconds: 300),
//   transitionBuilder: (child, animation) {
//     return FadeTransition(
//       opacity: animation,
//       child: SlideTransition(
//         position: Tween<Offset>(
//           begin: const Offset(0.1, 0),
//           end: Offset.zero,
//         ).animate(animation),
//         child: child,
//       ),
//     );
//   },
//   child: //gridview.builder ),

// class HMCardItem extends StatelessWidget {
//   const HMCardItem({super.key, required this.imgPath});
//   final String imgPath;
//   @override
//   Widget build(BuildContext context) {
//     return HMCardForm(
//       cardModel: CardModel(
//         title: 'بيت ثلاثة دور',
//         location: 'صنعاء - شارع المقالح',
//         propertyType: 'بيت',
//         price: '100000 ريال يمني',
//         img: AssetsData.propertyJpg,
//         likes: null,
//         date: null,
//       ),
//     );
//     // Container(
//     //   // padding: Funcs.hItemPadding(),
//     //   width: Funcs.respWidth(fract: 0.46, context: context),
//     //   decoration: Funcs.cardDecoration(null, 12),
//     //   child: CardForm(
//     //     cardModel: CardModel(
//     //       title: 'بيت ثلاثة دور',
//     //       location: 'صنعاء - شارع المقالح',
//     //       propertyType: 'بيت',
//     //       price: '100000 ريال يمني',
//     //       img: AssetsData.propertyJpg,
//     //       likes: null,
//     //       date: null,
//     //     ),
//     //   ),
//     // );
//   }
// }

// class HMCardForm extends StatelessWidget {
//   const HMCardForm({super.key, required this.cardModel});
//   final CardModel cardModel;
//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 193.3407 / 289,
//       child: HMCardBox(cardModel: cardModel),
//       // Column(
//       //   crossAxisAlignment: CrossAxisAlignment.end,
//       //   children: [
//       //     CardPropertyImage(imgPath: cardModel.img),
//       //     SizedBox(height: 10),
//       //     CardDateTxt(date: cardModel.date ?? DateTime.now()),
//       //     SizedBox(height: 10),
//       //     CardTitleWid(text: cardModel.title),
//       //     SizedBox(height: 15),
//       //     DetailIcoLine(
//       //       text: cardModel.location,
//       //       icoPath: AssetsData.locationSvg,
//       //     ),
//       //     DetailIcoLine(
//       //       text: cardModel.propertyType,
//       //       icoPath: AssetsData.buildingSvg,
//       //     ),
//       //     DetailIcoLine(text: cardModel.price, icoPath: AssetsData.tagSvg),
//       //     Spacer(), //////
//       //     CardSeperatedBtns(cardModel: cardModel),
//       //   ],
//       // ),
//     );
//   }
// }

// class HMCardBox extends StatelessWidget {
//   const HMCardBox({super.key, required this.cardModel});
//   final CardModel cardModel;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding:
//           Funcs.hItemPadding(), //EdgeInsets.symmetric(horizontal: 6.0, vertical: 12),
//       decoration: Funcs.cardDecoration(null, 12),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           CardPropertyImage(imgPath: cardModel.img),
//           // SizedBox(height: 10),
//           Spacer(flex: 2),
//           CardDateTxt(date: cardModel.date ?? DateTime.now()),
//           // SizedBox(height: 10),
//           Spacer(flex: 2),
//           CardTitleWid(text: cardModel.title),
//           // SizedBox(height: 15),
//           Spacer(flex: 3),
//           DetailIcoLine(
//             text: cardModel.location,
//             icoPath: AssetsData.locationSvg,
//           ),
//           DetailIcoLine(
//             text: cardModel.propertyType,
//             icoPath: AssetsData.buildingSvg,
//           ),
//           DetailIcoLine(text: cardModel.price, icoPath: AssetsData.tagSvg),
//           Spacer(flex: 3), //or Expanded( child: Column(),),
//           CardSeperatedBtns(cardModel: cardModel),
//         ],
//       ),
//     );
//   }
// }

// class HTCard extends StatelessWidget {
//   const HTCard({
//     super.key,
//     required this.name,
//     required this.img,
//     this.onTap,
//     this.advCount = '150',
//   });
//   final String name, img, advCount;
//   final void Function()? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return HTCardForm(
//       imgPath: img,
//       sectionName: name,
//       onTap: onTap,
//       advCount: advCount,
//     );
//   }
// }

// class HTCardForm extends StatelessWidget {
//   const HTCardForm({
//     super.key,
//     required this.imgPath,
//     required this.sectionName,
//     required this.onTap,
//     required this.advCount,
//   });

//   final String imgPath;
//   final String sectionName;
//   final void Function()? onTap;
//   final String advCount;

//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 192 / 244,
//       child: SectCardBox(
//         imgPath: imgPath,
//         sectionName: sectionName,
//         onTap: onTap,
//         advCount: advCount,
//       ),
//     );
//   }
// }

// class HTCardBox extends StatelessWidget {
//   const HTCardBox({
//     super.key,
//     required this.imgPath,
//     required this.sectionName,
//     required this.onTap,
//     required this.advCount,
//   });

//   final String imgPath;
//   final String sectionName;
//   final void Function()? onTap;
//   final String advCount;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 12),
//       decoration: Funcs.cardDecoration(null, 12),
//       child: Column(
//         children: [
//           SectCardImg(svgPath: imgPath, label: sectionName),
//           Spacer(),
//           TailBtn(onTap: onTap, advCount: advCount),
//         ],
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return PersistentTabView(
//       context,
//       controller: _controller,
//       screens: const [HomePage(), ProfilePage(), SettingsPage()],
//       items: [
//         PersistentBottomNavBarItem(
//           icon: Icon(Icons.home),
//           title: "Home",
//           activeColorPrimary: Colors.blue,
//           inactiveColorPrimary: Colors.grey,
//         ),
//         PersistentBottomNavBarItem(
//           icon: Icon(Icons.person),
//           title: "Profile",
//           activeColorPrimary: Colors.blue,
//           inactiveColorPrimary: Colors.grey,
//         ),
//         PersistentBottomNavBarItem(
//           icon: Icon(Icons.settings),
//           title: "Settings",
//           activeColorPrimary: Colors.blue,
//           inactiveColorPrimary: Colors.grey,
//         ),
//       ],
//       navBarStyle: NavBarStyle.style6, // Try different styles!
//       backgroundColor: Colors.white,
//       confineToSafeArea: true,
//       handleAndroidBackButtonPress: true,
//       resizeToAvoidBottomInset: true,
//       stateManagement: true,
//       hideNavigationBarWhenKeyboardAppears: true,
//     );
//   }
// }

// 🏠 Tab Views (can include Scaffold if needed)

//Custom Navigation bar from documentation
// PersistentTabController _controller = PersistentTabController(initialIndex: 0);

// class CustomNavBarWidget extends StatelessWidget {
//   final int selectedIndex;
//   final List<PersistentBottomNavBarItem>
//   items; // NOTE: You CAN declare your own model here instead of `PersistentBottomNavBarItem`.
//   final ValueChanged<int> onItemSelected;

//   const CustomNavBarWidget({
//     super.key,
//     this.selectedIndex = 0,
//     required this.items,
//     required this.onItemSelected,
//   });

//   Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
//     return Container(
//       alignment: Alignment.center,
//       height: 60.0,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Flexible(
//             child: IconTheme(
//               data: IconThemeData(
//                 size: 26.0,
//                 color:
//                     isSelected
//                         ? (item.activeColorSecondary ?? item.activeColorPrimary)
//                         : item.inactiveColorPrimary ?? item.activeColorPrimary,
//               ),
//               child: item.icon,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 5.0),
//             child: Material(
//               type: MaterialType.transparency,
//               child: FittedBox(
//                 child: Text(
//                   item.title!,
//                   style: TextStyle(
//                     color:
//                         isSelected
//                             ? (item.activeColorSecondary ??
//                                 item.activeColorPrimary)
//                             : item.inactiveColorPrimary,
//                     fontWeight: FontWeight.w400,
//                     fontSize: 12.0,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: Container(
//         width: double.infinity,
//         height: 60.0,
//         child: Row(
//           mainAxisAlignment: navBarEssentials.navBarItemsAlignment,
//           children:
//               items.map((item) {
//                 int index = items.indexOf(item);
//                 return Flexible(
//                   child: GestureDetector(
//                     onTap: () {
//                       onItemSelected(index);
//                     },
//                     child: _buildItem(item, selectedIndex == index),
//                   ),
//                 );
//               }).toList(),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return PersistentTabView.custom(
//       context,
//       controller: _controller,
//       screens: [
//         CustomNavBarScreen(
//           //You can declare route settings for custom navigation bar screen here
//           routeAndNavigatorSettings: RouteAndNavigatorSettings(
//             initialRoute: "/mainBody",
//             routes: {
//               "/first": (final context) => const MainScreen2(),
//               "/second": (final context) => const MainScreen3(),
//             },
//           ),
//           screen: MainScreen(
//             menuScreenContext: widget.menuScreenContext,
//             scrollController: _scrollControllers.first,
//           ),
//         ),
//         CustomNavBarScreen(
//           screen: MainScreen(
//             menuScreenContext: widget.menuScreenContext,
//             scrollController: _scrollControllers[1],
//           ),
//         ),
//         CustomNavBarScreen(
//           screen: MainScreen(
//             menuScreenContext: widget.menuScreenContext,
//             scrollController: _scrollControllers[2],
//           ),
//         ),
//         CustomNavBarScreen(
//           screen: MainScreen(
//             menuScreenContext: widget.menuScreenContext,
//             scrollController: _scrollControllers[3],
//           ),
//         ),
//         CustomNavBarScreen(
//           screen: MainScreen(
//             menuScreenContext: widget.menuScreenContext,
//             scrollController: _scrollControllers.last,
//           ),
//         ),
//       ],
//       itemCount: 5,
//       isVisible: true,
//       hideOnScrollSettings: HideOnScrollSettings(
//         hideNavBarOnScroll: true,
//         scrollControllers: _scrollControllers,
//       ),
//       backgroundColor: Colors.grey.shade900,
//       customWidget: CustomNavBarWidget(
//         items: _navBarsItems(),
//         onItemSelected: (final index) {
//           //Scroll to top for custom widget. For non custom widget, declare property `scrollController` in `PersistentBottomNavBarItem`.
//           if (index == _controller.index) {
//             _scrollControllers[index].animateTo(
//               0,
//               duration: const Duration(milliseconds: 200),
//               curve: Curves.ease,
//             );
//           }
//           setState(() {
//             _controller.index = index; // THIS IS CRITICAL!! Don't miss it!
//           });
//         },
//         selectedIndex: _controller.index,
//       ),
//     );
//   }
// }

//Default Navigation bar from documentation
// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return PersistentTabView(
//         context,
//         controller: _controller,
//         screens: _buildScreens(),
//         items: _navBarsItems(),
//         handleAndroidBackButtonPress: true, // Default is true.
//         resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
//         stateManagement: true, // Default is true.
//         hideNavigationBarWhenKeyboardAppears: true,
//         popBehaviorOnSelectedNavBarItemPress: PopActionScreensType.all,
//         padding: const EdgeInsets.only(top: 8),
//         backgroundColor: Colors.grey.shade900,
//         isVisible: true,
//         animationSettings: const NavBarAnimationSettings(
//             navBarItemAnimation: ItemAnimationSettings( // Navigation Bar's items animation properties.
//                 duration: Duration(milliseconds: 400),
//                 curve: Curves.ease,
//             ),
//             screenTransitionAnimation: ScreenTransitionAnimationSettings( // Screen transition animation on change of selected tab.
//                 animateTabTransition: true,
//                 duration: Duration(milliseconds: 200),
//                 screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
//             ),
//         ),
//         confineToSafeArea: true,
//         navBarHeight: kBottomNavigationBarHeight,
//         navBarStyle: _navBarStyle, // Choose the nav bar style with this property
//       );
//   }
// }
