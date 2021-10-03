package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_644;
         param1["bitmap"] = const_548;
         param1["border"] = const_591;
         param1["border_notify"] = const_1364;
         param1["button"] = const_368;
         param1["button_thick"] = const_643;
         param1["button_icon"] = const_1276;
         param1["button_group_left"] = const_634;
         param1["button_group_center"] = const_670;
         param1["button_group_right"] = const_598;
         param1["canvas"] = const_596;
         param1["checkbox"] = const_608;
         param1["closebutton"] = const_948;
         param1["container"] = const_304;
         param1["container_button"] = const_683;
         param1["display_object_wrapper"] = const_717;
         param1["dropmenu"] = const_390;
         param1["dropmenu_item"] = const_402;
         param1["frame"] = const_299;
         param1["frame_notify"] = const_1289;
         param1["header"] = const_663;
         param1["icon"] = const_925;
         param1["itemgrid"] = const_936;
         param1["itemgrid_horizontal"] = const_456;
         param1["itemgrid_vertical"] = const_545;
         param1["itemlist"] = const_882;
         param1["itemlist_horizontal"] = const_331;
         param1["itemlist_vertical"] = const_296;
         param1["maximizebox"] = const_1261;
         param1["menu"] = const_1251;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_866;
         param1["minimizebox"] = const_1379;
         param1["notify"] = const_1225;
         param1["null"] = const_626;
         param1["password"] = const_728;
         param1["radiobutton"] = const_698;
         param1["region"] = const_380;
         param1["restorebox"] = const_1222;
         param1["scaler"] = const_649;
         param1["scaler_horizontal"] = const_1288;
         param1["scaler_vertical"] = const_1343;
         param1["scrollbar_horizontal"] = const_427;
         param1["scrollbar_vertical"] = const_540;
         param1["scrollbar_slider_button_up"] = const_1016;
         param1["scrollbar_slider_button_down"] = const_940;
         param1["scrollbar_slider_button_left"] = const_842;
         param1["scrollbar_slider_button_right"] = const_892;
         param1["scrollbar_slider_bar_horizontal"] = const_958;
         param1["scrollbar_slider_bar_vertical"] = const_914;
         param1["scrollbar_slider_track_horizontal"] = const_947;
         param1["scrollbar_slider_track_vertical"] = const_983;
         param1["scrollable_itemlist"] = const_1214;
         param1["scrollable_itemlist_vertical"] = const_419;
         param1["scrollable_itemlist_horizontal"] = const_896;
         param1["selector"] = const_580;
         param1["selector_list"] = const_724;
         param1["submenu"] = const_866;
         param1["tab_button"] = const_641;
         param1["tab_container_button"] = const_996;
         param1["tab_context"] = const_365;
         param1["tab_content"] = const_808;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_574;
         param1["input"] = const_723;
         param1["toolbar"] = const_1191;
         param1["tooltip"] = const_328;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
