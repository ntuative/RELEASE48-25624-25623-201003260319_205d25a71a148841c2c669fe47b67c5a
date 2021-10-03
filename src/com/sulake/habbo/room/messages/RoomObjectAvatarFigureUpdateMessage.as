package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1735:String;
      
      private var var_402:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_402 = param1;
         var_1735 = param2;
      }
      
      public function get race() : String
      {
         return var_1735;
      }
      
      public function get figure() : String
      {
         return var_402;
      }
   }
}
