package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1934:int;
      
      private var var_1935:Boolean;
      
      private var _offerId:int;
      
      private var var_1635:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1935 = param1.readBoolean();
         var_1934 = param1.readInteger();
         var_1635 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1635;
      }
      
      public function get monthsRequired() : int
      {
         return var_1934;
      }
      
      public function get isVip() : Boolean
      {
         return var_1935;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
