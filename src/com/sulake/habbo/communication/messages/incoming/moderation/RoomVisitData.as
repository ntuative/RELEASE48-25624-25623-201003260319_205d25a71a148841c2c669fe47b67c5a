package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_694:String;
      
      private var var_1609:int;
      
      private var var_1560:Boolean;
      
      private var _roomId:int;
      
      private var var_1610:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1560 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_694 = param1.readString();
         var_1610 = param1.readInteger();
         var_1609 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1560;
      }
      
      public function get roomName() : String
      {
         return var_694;
      }
      
      public function get enterMinute() : int
      {
         return var_1609;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1610;
      }
   }
}
