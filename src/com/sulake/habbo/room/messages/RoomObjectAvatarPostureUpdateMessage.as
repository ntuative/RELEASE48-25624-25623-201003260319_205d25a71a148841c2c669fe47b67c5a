package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2236:String;
      
      private var var_854:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2236 = param1;
         var_854 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2236;
      }
      
      public function get parameter() : String
      {
         return var_854;
      }
   }
}
