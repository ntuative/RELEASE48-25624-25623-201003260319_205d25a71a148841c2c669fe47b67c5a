package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1314:int;
      
      private var var_2160:int = -1;
      
      private var var_371:int;
      
      private var var_1619:int;
      
      private var var_1795:int;
      
      private var _offerId:int;
      
      private var var_1313:int;
      
      private var var_1796:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1796 = param2;
         var_1795 = param3;
         var_1314 = param4;
         var_371 = param5;
         var_2160 = param6;
         var_1619 = param7;
         var_1313 = param8;
      }
      
      public function get status() : int
      {
         return var_371;
      }
      
      public function get price() : int
      {
         return var_1314;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_2160;
      }
      
      public function get offerCount() : int
      {
         return var_1313;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1795;
      }
      
      public function get averagePrice() : int
      {
         return var_1619;
      }
      
      public function get furniId() : int
      {
         return var_1796;
      }
   }
}
