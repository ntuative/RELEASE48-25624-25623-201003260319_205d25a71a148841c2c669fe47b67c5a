package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1432:Array;
      
      private var var_1619:int;
      
      private var var_1616:int;
      
      private var var_1620:int;
      
      private var var_1617:int;
      
      private var _dayOffsets:Array;
      
      private var var_1618:int;
      
      private var var_1433:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1432;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1432 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1616;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1433 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1619 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1620;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1617;
      }
      
      public function get offerCount() : int
      {
         return var_1618;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1618 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1433;
      }
      
      public function get averagePrice() : int
      {
         return var_1619;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1617 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1620 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1616 = param1;
      }
   }
}
