package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2163:int;
      
      private var var_437:Boolean;
      
      private var var_2164:Boolean;
      
      private var var_906:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2164 = param1.readBoolean();
         if(var_2164)
         {
            var_2163 = param1.readInteger();
            var_437 = param1.readBoolean();
         }
         else
         {
            var_906 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_906 != null)
         {
            var_906.dispose();
            var_906 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_2163;
      }
      
      public function get owner() : Boolean
      {
         return var_437;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_2164;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_906;
      }
   }
}
