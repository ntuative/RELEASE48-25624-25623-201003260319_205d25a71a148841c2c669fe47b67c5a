package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1006:int;
      
      private var var_1232:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1006 = param1;
         var_1232 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1006;
      }
      
      public function get itemName() : String
      {
         return var_1232;
      }
   }
}
