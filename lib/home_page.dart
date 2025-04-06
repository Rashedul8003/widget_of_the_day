import 'package:flutter/material.dart';

import '100_future_builder/future_builder.dart';
import '101_stream_builder/stream_builder.dart';
import '103_value_notifier/value_notifier.dart';
import '104_inherited_notifier/inherited_notifier.dart';
import '105_listener/listener.dart';
import '106_builder/builder.dart';
import '107_pageview_builder/pageview_builder.dart';
import '108_animated_builder/animated_builder.dart';
import '109_snack_bar/snack_bar.dart';
import '10_appbar/appbar.dart';
import '11_drawer/drawer.dart';
import '12_sliver-appbar/sliverappbar.dart';
import '13_tabbar/tabbar.dart';
import '14_animated-container/animatedcontainer.dart';
import '15_media_query/mediaquery.dart';
import '16_alert_dialog/alertdialog.dart';
import '17_text&styling/text_n_styling.dart';
import '18_rich_text/richtext.dart';
import '19_timer/timer.dart';
import '1_container/container.dart';
import '20_pageview/pageview.dart';
import '21_stack/stack.dart';
import '22_textfield/textfield.dart';
import '23_animated_icon/animated_icon.dart';
import '24_slider/slider.dart';
import '25_date_picker/date_picker.dart';
import '26_time_picker/time_picker.dart';
import '27_listwheelscrollview/listwheelscrollview.dart';
import '28_lineargradient/lineargradient.dart';
import '29_elevated_button/elevated_button.dart';
import '2_expanded/expanded.dart';
import '30_floating_action_button/floating_action_button.dart';
import '31_raw_material_button/raw_material_button.dart';
import '32_icon_button/iconbutton.dart';
import '33_navigator/navigator.dart';
import '34_card/card.dart';
import '35_clipper/clipper.dart';
import '36_rotated_box/rotated_box.dart';
import '37_transform/transform.dart';
import '38_positioned/positioned.dart';
import '39_custom_paint/custom_paint.dart';
import '3_column&row/column.dart';
import '3_column&row/row.dart';
import '40_clipoval/clipoval.dart';
import '41_cliprrect/cliprrect.dart';
import '42_cliprect/cliprect.dart';
import '43_clippath/clippath.dart';
import '44_radial_gradient/radial_n_sweep_gradient.dart';
import '45_stateful_widget/stateful_widget.dart';
import '46_table/table.dart';
import '47_data_table/data_table.dart';
import '48_placeholder/placeholder.dart';
import '49_gesturedect_&_inkwell/gesturedect_n_inkwell.dart';
import '4_listview&builder/listview.dart';
import '50_material/material.dart';
import '51_switches/switches.dart';
import '52_dropdown_&_popupmenu/dropdown_n_popupmenu.dart';
import '53_hero_animation/hero_animation.dart';
import '54_aboutdialog/aboutdialog.dart';
import '55_stepper/stepper.dart';
import '56_fitted_box/fitted_box.dart';
import '57_show_search/show_search.dart';
import '58_.adaptive/adaptive.dart';
import '5_single_child_scroll_view/single_child_scroll_view.dart';
import '60_choice_chip/choice_chip.dart';
import '61_wrap/wrap.dart';
import '62_expansion_tile/expansion_tile.dart';
import '63_range_slider/range_slider.dart';
import '64_show_modelbottomsheet/show_modelbottomsheet.dart';
import '65_animated_cross_fade/animated_cross_fade.dart';
import '66_flexible/flexible.dart';
import '67_spacer/spacer.dart';
import '68_grid_paper/grid_paper.dart';
import '69_interactive_viewer/interactive_viewer.dart';
import '6_image.asset/image_asset.dart';
import '70_checkbox_list_tile/checkbox_list_tile.dart';
import '71_selectable_text/selectable_text.dart';
import '72_animated_padding/animated_padding.dart';
import '73_refresh_indicator/refresh_indicator.dart';
import '74_image_filtered/image_filtered.dart';
import '75_aspect_ratio/aspect_ratio.dart';
import '76_toggle_button/toggle_button.dart';
import '77_physical_model/physical_model.dart';
import '78_align/align.dart';
import '79_safe_area/safe_area.dart';
import '7_gridview&builder/gridview.dart';
import '80_pageroute_builder/pageroute_builder.dart';
import '81_draggable/draggable.dart';
import '82_backdrop_filter/backdrop_filter.dart';
import '83_reorderable_list_view/reorderable_list_view.dart';
import '84_fade_transition/fade_transition.dart';
import '85_circle_avatar/circle_avatar.dart';
import '86_tooltip/tooltip.dart';
import '87_visibility/visibility.dart';
import '88_indexed_stack/indexed_stack.dart';
import '89_navigator_2.0/navigator_2.0.dart';
import '8_gesturedetector/gesturedetector.dart';
import '90_null_aware_operators/null_aware_operators.dart';
import '91_cascade_operator/cascade_operator.dart';
import '92_inherited_widget/inherited_widget.dart';
import '93_fractionally_sizedbox/fractionally_sizedbox.dart';
import '94_constrained_box/constrained_box.dart';
import '95_cupertino_search_text_field/cupertino_search_text_field.dart';
import '96_stateful_builder/stateful_builder.dart';
import '97_layout_builder/layout_builder.dart';
import '98_orientation_builder/orientation_builder.dart';
import '99_platform_detect/platform_detect.dart';
import '9_bottom-nav_bar/bottomnavbar.dart';

class HomePages extends StatelessWidget {
  HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Widget Demos')),
      body: ListView.builder(
        itemCount: demoPages.length,
        itemBuilder: (context, index) {
          final title = demoPages[index].keys.first;
          final widget = demoPages[index].values.first;
          return ListTile(
            title: Text("${index + 1}. $title"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => widget),
              );
            },
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }

  final List<Map<String, Widget>> demoPages = [
    {'AboutDialog': const MyAboutDialog()},
    {'Adaptive': const MyAdaptive()},
    {'Align': const MyAlign()},
    {'AlertDialog': const MyAlertDialog()},
    {'AnimatedContainer': const MyAnimatedContainer()},
    {'AnimatedCrossFade': const MyAnimatedCrossFade()},
    {'AnimatedIcon': const MyAnimatedIcon()},
    {'AnimatedPadding': const MyAnimatedPadding()},
    {'AnimationBuilder': const MyAnimationBuilder()},
    {'AppBar': const MyAppBar()},
    {'AspectRatio': const MyAspectRatio()},
    {'BackdropFilter': const MyBackdropFilter()},
    {'BottomNavBar': const MyBottomNavBar()},
    {'Builder': const MyBuilder()},
    {'Button': const MyElevatedButton()},
    {'Card': const MyCard()},
    {'CascadeOperator': const MyCascadeOperator()},
    {'CheckboxListTile': const MyCheckboxListTile()},
    {'ChoiceChip': const MyChoiceChip()},
    {'CircleAvatar': const MyCircleAvatar()},
    {'ClipOval': const MyClipOval()},
    {'ClipPath': const MyClipPath()},
    {'ClipRRect': const MyClipRRect()},
    {'ClipRect': const MyClipRect()},
    {'Column': const MyColumn()},
    {'ConstrainedBox': const MyConstrainedBox()},
    {'Container': const MyContainer()},
    {'CupertinoSearch': const MyCupertinoSearch()},
    {'CustomClipper': const MyCustomClipper()},
    {'CustomPaint': const MyCustomPaint()},
    {'DataTable': const MyDataTable()},
    {'DatePicker': const MyDatePicker()},
    {'Drawer': const MyDrawer()},
    {'Draggable': const MyDraggable()},
    {'DropDownNPopupMenu': const MyDropDownNPopupMenu()},
    {'Expanded': const MyExpanded()},
    {'ExpansionTile': const MyExpansionTile()},
    {'FadeTransition': const MyFadeTransition()},
    {'FittedBox': const MyFittedBox()},
    {'Flexible': const MyFlexible()},
    {'FloatingActionButton': const MyFloatingActionButton()},
    {'FractionallySizedBox': const MyFractionallySizedBox()},
    {'FutureBuilder': const MyFutureBuilder()},
    {'GestureDetector': const MyGestureDetector()},
    {'GestetureNInk': const MyGestetureNInk()},
    {'GridPaper': const MyGridPaper()},
    {'GridView': const MyGridView()},
    {'HeroAnimation': const MyHeroAnimation()},
    {'IconButton': const MyIconButton()},
    {'ImageAsset': const MyImageAsset()},
    {'ImageFiltered': const MyImageFiltered()},
    {'IndexedStack': const MyIndexedStack()},
    {'InheritedNotifier': const MyInheritedNotifier()},
    {'InheritedWidget': const MyInheritedWidget()},
    {'InteractiveViewer': const MyInteractiveViewer()},
    {'LayoutBuilder': const MyLayoutBuilder()},
    {'LinearGradient': const MyLinearGradient()},
    {'ListView': MyListView()},
    {'ListWheelScrollView': const MyListWheelScrollView()},
    {'Listener': const MyListener()},
    {'Material': const MyMaterial()},
    {'MediaQuery': const MyMediaQuery()},
    {'Navigator': const MyNavigator()},
    {'Navigator2': const MyNavigator2()},
    {'NullAwareOperators': MyNullAwareOperators()},
    {'OrientationBuilder': const MyOrientationBuilder()},
    {'PageRouteBuilder': const MyPageRouteBuilder()},
    {'PageView': MyPageView()},
    {'PageViewBuilder': const MyPageViewBuilder()},
    {'PhysicalModel': const MyPhysicalModel()},
    {'Placeholder': const MyPlaceholder()},
    {'PlatformDetect': const MyPlatformDetect()},
    {'Positioned': const MyPositioned()},
    {'RadialNSeepGradient': const MyRadialNSeepGradient()},
    {'RangeSlider': const MyRangeSlider()},
    {'RawMaterialButton': const MyRawMaterialButton()},
    {'RefreshIndicator': const MyRefreshIndicator()},
    {'ReorderableListView': const MyReorderableListView()},
    {'RichText': const MyRichText()},
    {'RotatedBox': const MyRotatedBox()},
    {'Row': const MyRow()},
    {'SafeArea': const MySafeArea()},
    {'SelectableText': const MySelectableText()},
    {'ShowModelBottomSheet': const MyShowModelBottomSheet()},
    {'ShowSearch': const MyShowSearch()},
    {'SingleChildScrollView': const MySingleChildScrollView()},
    {'Slider': const MySlider()},
    {'SliverAppBar': const MySliverAppBar()},
    {'SnackBar': const MySnackBar()},
    {'Spacer': const MySpacer()},
    {'Stack': const MyStack()},
    {'StatefulBuilder': const MyStatefulBuilder()},
    {'StatufulWidget': const MyStatufulWidget(number: 0)},
    {'Stepper': const MyStepper()},
    {'StreamBuilder': const MyStreamBuilder()},
    {'Switches': const MySwitches()},
    {'TabBar': const MyTabBar()},
    {'Table': const MyTable()},
    {'TextField': const MyTextField()},
    {'TextStyle': const MyTextStyle()},
    {'TimePicker': const MyTimePicker()},
    {'Timer': const MyTimer()},
    {'ToggleButton': const MyToggleButton()},
    {'Tooltip': const MyTooltip()},
    {'Transform': const MyTransform()},
    {'ValueNotifier': const MyValueNotifier()},
    {'Visibility': const MyVisibility()},
    {'Wrap': const MyWrap()},
  ];
}
