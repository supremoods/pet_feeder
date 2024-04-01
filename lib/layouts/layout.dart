import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_feeder/constant/enums.dart';
import 'package:pet_feeder/constant/menu.dart';
import 'package:pet_feeder/constant/theme.dart';
import 'package:pet_feeder/feature/home/widgets/set_alarm_bottom_sheet/bottom_sheet.dart';
import 'package:pet_feeder/layouts/app_bar.dart';
import 'package:pet_feeder/core/providers/states/actions.dart';

class Layout extends ConsumerStatefulWidget {
  const Layout({super.key});

  @override
  ConsumerState<Layout> createState() => _LayoutState();
}

class _LayoutState extends ConsumerState<Layout> {
  int selectedIndex = 0;
  bool showTitle = false;
  late ScrollController _scrollController;
  
  
  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_updateBackgroundVisibility);
    super.initState();
  }
  
   void _updateBackgroundVisibility() {
    final bool shouldShow = _scrollController.offset > 0;
    if (shouldShow != showTitle) {
      setState(() {
        showTitle = shouldShow;
      });
    }
  }

    @override
  void dispose() {
    _scrollController.removeListener(_updateBackgroundVisibility);
    _scrollController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        headerTitle: menuPages[selectedIndex]['label'],
        show: showTitle,
        leading: () => {
          ref.watch(isEdit.notifier).state = !ref.watch(isEdit)
        },
        action: () =>{
          SetAlarmBottomSheet(context, 'Add Alarm', ActionType.add)
        },
        actionChild: Container(
          padding: const EdgeInsets.only(right: 10),
          alignment: Alignment.center,
          child: const Icon(
            Icons.add,
          )
        ),
        leadingChild: Container(
          padding: const EdgeInsets.only(left: 10),
          alignment: Alignment.center,
          child:  Text(
            ref.watch(isEdit) ? 'Done ': 'Edit',
            style: const TextStyle(
              fontSize: 16,
              color: primaryColor
            ),
          )
        )
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          // height: MediaQuery.of(context).size.height ,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child:menuPages[selectedIndex]['page'],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1.0,
        currentIndex: selectedIndex,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white54,
        selectedItemColor: primaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: menuItems(),
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),
    );
  }
}