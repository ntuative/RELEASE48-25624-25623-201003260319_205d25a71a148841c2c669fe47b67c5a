package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1500:int = 2;
      
      public static const const_1545:int = 1;
      
      public static const const_1477:int = 0;
       
      
      private var var_1314:int;
      
      private var var_371:int;
      
      private var var_2363:int;
      
      private var _offerId:int;
      
      private var var_1795:int;
      
      private var var_1796:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1796 = param2;
         var_1795 = param3;
         var_1314 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1796;
      }
      
      public function get furniType() : int
      {
         return var_1795;
      }
      
      public function get price() : int
      {
         return var_1314;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
