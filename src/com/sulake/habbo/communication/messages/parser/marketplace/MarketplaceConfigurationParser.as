package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1822:int;
      
      private var var_1448:int;
      
      private var var_1821:int;
      
      private var var_1818:int;
      
      private var var_1819:int;
      
      private var var_1447:int;
      
      private var var_1823:int;
      
      private var var_1180:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1822;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1448;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1823;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1818;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1819;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1447;
      }
      
      public function get commission() : int
      {
         return var_1821;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1180 = param1.readBoolean();
         var_1821 = param1.readInteger();
         var_1448 = param1.readInteger();
         var_1447 = param1.readInteger();
         var_1818 = param1.readInteger();
         var_1822 = param1.readInteger();
         var_1819 = param1.readInteger();
         var_1823 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1180;
      }
   }
}
