package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_328:Boolean;
      
      private var var_1221:int;
      
      private var var_1472:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1221 = param1.readInteger();
         var_1472 = param1.readString();
         var_328 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_328;
      }
      
      public function get nodeName() : String
      {
         return var_1472;
      }
      
      public function get nodeId() : int
      {
         return var_1221;
      }
   }
}
