package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerPreviewMessage extends RoomWidgetMessage
   {
      
      public static const const_565:String = "RWDPM_PREVIEW_DIMMER_PRESET";
       
      
      private var var_1057:int;
      
      private var _color:uint;
      
      private var var_1749:Boolean;
      
      public function RoomWidgetDimmerPreviewMessage(param1:uint, param2:int, param3:Boolean)
      {
         super(const_565);
         _color = param1;
         var_1057 = param2;
         var_1749 = param3;
      }
      
      public function get brightness() : int
      {
         return var_1057;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get bgOnly() : Boolean
      {
         return var_1749;
      }
   }
}
