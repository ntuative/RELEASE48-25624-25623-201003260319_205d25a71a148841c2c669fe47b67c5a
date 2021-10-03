package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1026:Boolean;
      
      private var var_1278:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1026 = param1.readInteger() > 0;
         var_1278 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1026;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1278;
      }
      
      public function flush() : Boolean
      {
         var_1026 = false;
         var_1278 = false;
         return true;
      }
   }
}
