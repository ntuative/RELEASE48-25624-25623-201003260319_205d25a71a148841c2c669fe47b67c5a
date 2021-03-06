package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_111;
         param1["bound_to_parent_rect"] = const_86;
         param1["child_window"] = const_1014;
         param1["embedded_controller"] = const_329;
         param1["resize_to_accommodate_children"] = const_63;
         param1["input_event_processor"] = const_49;
         param1["internal_event_handling"] = const_579;
         param1["mouse_dragging_target"] = const_197;
         param1["mouse_dragging_trigger"] = const_333;
         param1["mouse_scaling_target"] = const_249;
         param1["mouse_scaling_trigger"] = const_411;
         param1["horizontal_mouse_scaling_trigger"] = const_222;
         param1["vertical_mouse_scaling_trigger"] = const_203;
         param1["observe_parent_input_events"] = const_1011;
         param1["optimize_region_to_layout_size"] = const_463;
         param1["parent_window"] = const_1022;
         param1["relative_horizontal_scale_center"] = const_173;
         param1["relative_horizontal_scale_fixed"] = const_113;
         param1["relative_horizontal_scale_move"] = const_324;
         param1["relative_horizontal_scale_strech"] = const_267;
         param1["relative_scale_center"] = const_857;
         param1["relative_scale_fixed"] = const_605;
         param1["relative_scale_move"] = const_826;
         param1["relative_scale_strech"] = const_978;
         param1["relative_vertical_scale_center"] = const_175;
         param1["relative_vertical_scale_fixed"] = const_112;
         param1["relative_vertical_scale_move"] = const_308;
         param1["relative_vertical_scale_strech"] = const_266;
         param1["on_resize_align_left"] = const_711;
         param1["on_resize_align_right"] = const_443;
         param1["on_resize_align_center"] = const_482;
         param1["on_resize_align_top"] = const_660;
         param1["on_resize_align_bottom"] = const_461;
         param1["on_resize_align_middle"] = const_472;
         param1["on_accommodate_align_left"] = const_992;
         param1["on_accommodate_align_right"] = const_426;
         param1["on_accommodate_align_center"] = const_573;
         param1["on_accommodate_align_top"] = const_805;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_557;
         param1["route_input_events_to_parent"] = const_360;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_863;
         param1["scalable_with_mouse"] = const_874;
         param1["reflect_horizontal_resize_to_parent"] = const_357;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_275;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
