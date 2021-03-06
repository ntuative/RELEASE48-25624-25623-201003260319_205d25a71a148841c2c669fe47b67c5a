package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1188:int;
      
      private var var_1138:int;
      
      private var var_1187:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1188;
      }
      
      public function flush() : Boolean
      {
         var_1138 = 0;
         var_1188 = 0;
         var_1187 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1138;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1188 = param1.readInteger();
         var_1138 = param1.readInteger();
         var_1187 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1187;
      }
   }
}
