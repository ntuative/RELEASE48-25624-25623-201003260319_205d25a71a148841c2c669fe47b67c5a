package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1609:int = 2;
      
      public static const const_1171:int = 4;
      
      public static const const_1297:int = 1;
      
      public static const const_1399:int = 3;
       
      
      private var var_1019:int = 0;
      
      private var var_854:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1019;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1019 = param1.readInteger();
         if(var_1019 == 3)
         {
            var_854 = param1.readString();
         }
         else
         {
            var_854 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1019 = 0;
         var_854 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_854;
      }
   }
}
