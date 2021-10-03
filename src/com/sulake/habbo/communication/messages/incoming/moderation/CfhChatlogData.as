package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1723:int;
      
      private var var_973:int;
      
      private var var_2019:int;
      
      private var var_1511:int;
      
      private var var_110:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1511 = param1.readInteger();
         var_2019 = param1.readInteger();
         var_973 = param1.readInteger();
         var_1723 = param1.readInteger();
         var_110 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1511);
      }
      
      public function get chatRecordId() : int
      {
         return var_1723;
      }
      
      public function get reportedUserId() : int
      {
         return var_973;
      }
      
      public function get callerUserId() : int
      {
         return var_2019;
      }
      
      public function get callId() : int
      {
         return var_1511;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_110;
      }
   }
}
