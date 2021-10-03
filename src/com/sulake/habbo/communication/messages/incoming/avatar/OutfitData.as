package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1855:String;
      
      private var var_675:String;
      
      private var var_1451:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1451 = param1.readInteger();
         var_1855 = param1.readString();
         var_675 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_675;
      }
      
      public function get figureString() : String
      {
         return var_1855;
      }
      
      public function get slotId() : int
      {
         return var_1451;
      }
   }
}
