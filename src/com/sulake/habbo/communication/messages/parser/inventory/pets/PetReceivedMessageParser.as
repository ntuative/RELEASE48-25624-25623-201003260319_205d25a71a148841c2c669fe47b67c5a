package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_951:PetData;
      
      private var var_1396:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1396 = param1.readBoolean();
         var_951 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1396 + ", " + var_951.id + ", " + var_951.name + ", " + pet.figure + ", " + var_951.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1396;
      }
      
      public function get pet() : PetData
      {
         return var_951;
      }
   }
}
