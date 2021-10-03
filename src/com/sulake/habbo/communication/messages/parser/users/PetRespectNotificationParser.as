package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1694:int;
      
      private var var_1145:PetData;
      
      private var var_1693:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1694;
      }
      
      public function get petData() : PetData
      {
         return var_1145;
      }
      
      public function flush() : Boolean
      {
         var_1145 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1693;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1694 = param1.readInteger();
         var_1693 = param1.readInteger();
         var_1145 = new PetData(param1);
         return true;
      }
   }
}
