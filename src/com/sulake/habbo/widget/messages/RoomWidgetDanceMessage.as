package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_688:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_912:int = 0;
      
      public static const const_1179:Array = [2,3,4];
       
      
      private var var_78:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_688);
         var_78 = param1;
      }
      
      public function get style() : int
      {
         return var_78;
      }
   }
}