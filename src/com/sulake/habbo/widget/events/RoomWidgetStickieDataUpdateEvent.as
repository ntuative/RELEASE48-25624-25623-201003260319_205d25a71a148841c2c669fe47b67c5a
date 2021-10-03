package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_691:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_186:String;
      
      private var var_640:String;
      
      private var var_1391:String;
      
      private var var_148:int = -1;
      
      private var var_47:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_148 = param2;
         var_1391 = param3;
         var_186 = param4;
         var_640 = param5;
         var_47 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1391;
      }
      
      public function get colorHex() : String
      {
         return var_640;
      }
      
      public function get text() : String
      {
         return var_186;
      }
      
      public function get objectId() : int
      {
         return var_148;
      }
      
      public function get controller() : Boolean
      {
         return var_47;
      }
   }
}
