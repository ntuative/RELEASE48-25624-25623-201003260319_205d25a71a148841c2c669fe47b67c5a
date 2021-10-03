package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1522:String;
      
      private var var_1672:int;
      
      private var var_1675:int;
      
      private var var_1673:int;
      
      private var var_1674:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1672 = param1.readInteger();
         var_1673 = param1.readInteger();
         var_1675 = param1.readInteger();
         var_1674 = param1.readString();
         var_1522 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1522;
      }
      
      public function get hour() : int
      {
         return var_1672;
      }
      
      public function get minute() : int
      {
         return var_1673;
      }
      
      public function get chatterName() : String
      {
         return var_1674;
      }
      
      public function get chatterId() : int
      {
         return var_1675;
      }
   }
}
