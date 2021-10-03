package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_436:int;
      
      private var var_1221:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function get flatId() : int
      {
         return var_436;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_436 = param1.readInteger();
         var_1221 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_436 = 0;
         var_1221 = 0;
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1221;
      }
   }
}
