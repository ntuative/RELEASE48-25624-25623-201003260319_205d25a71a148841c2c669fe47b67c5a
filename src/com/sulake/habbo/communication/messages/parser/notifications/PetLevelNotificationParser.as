package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_402:String;
      
      private var var_1739:int;
      
      private var var_2117:String;
      
      private var var_970:int;
      
      private var var_1186:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1186;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1186 = param1.readInteger();
         var_2117 = param1.readString();
         var_1739 = param1.readInteger();
         var_402 = param1.readString();
         var_970 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2117;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_402;
      }
      
      public function get petType() : int
      {
         return var_970;
      }
      
      public function get level() : int
      {
         return var_1739;
      }
   }
}
