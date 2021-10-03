package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_605:Array;
      
      private var var_1314:int;
      
      private var var_1496:Array;
      
      private var var_604:Array;
      
      private var var_1180:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1180 = _loc2_.isWrappingEnabled;
         var_1314 = _loc2_.wrappingPrice;
         var_1496 = _loc2_.stuffTypes;
         var_604 = _loc2_.boxTypes;
         var_605 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_605;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1496;
      }
      
      public function get price() : int
      {
         return var_1314;
      }
      
      public function get boxTypes() : Array
      {
         return var_604;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1180;
      }
   }
}
