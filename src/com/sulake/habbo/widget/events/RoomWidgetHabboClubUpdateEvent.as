package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_220:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2193:Boolean = false;
      
      private var var_2194:int = 0;
      
      private var var_2192:int = 0;
      
      private var var_2195:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_220,param5,param6);
         var_2195 = param1;
         var_2192 = param2;
         var_2194 = param3;
         var_2193 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_2194;
      }
      
      public function get periodsLeft() : int
      {
         return var_2192;
      }
      
      public function get daysLeft() : int
      {
         return var_2195;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2193;
      }
   }
}
