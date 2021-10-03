package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_1707:int;
      
      private var var_2029:String;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         var_2029 = param1.readString();
         var_1707 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return var_2029;
      }
      
      public function get userCount() : int
      {
         return var_1707;
      }
   }
}
