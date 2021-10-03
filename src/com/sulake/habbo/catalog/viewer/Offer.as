package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_1004:String = "price_type_none";
      
      public static const const_361:String = "pricing_model_multi";
      
      public static const const_460:String = "price_type_credits";
      
      public static const const_414:String = "price_type_credits_and_pixels";
      
      public static const const_412:String = "pricing_model_bundle";
      
      public static const const_476:String = "pricing_model_single";
      
      public static const const_668:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1262:String = "pricing_model_unknown";
      
      public static const const_442:String = "price_type_pixels";
       
      
      private var var_857:int;
      
      private var _offerId:int;
      
      private var var_856:int;
      
      private var var_415:String;
      
      private var var_596:String;
      
      private var var_1994:int;
      
      private var var_602:ICatalogPage;
      
      private var var_1243:String;
      
      private var var_416:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1243 = param1.localizationId;
         var_857 = param1.priceInCredits;
         var_856 = param1.priceInPixels;
         var_602 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_415;
      }
      
      public function get page() : ICatalogPage
      {
         return var_602;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1994 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_416;
      }
      
      public function get localizationId() : String
      {
         return var_1243;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_856;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1243 = "";
         var_857 = 0;
         var_856 = 0;
         var_602 = null;
         if(var_416 != null)
         {
            var_416.dispose();
            var_416 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_596;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1994;
      }
      
      public function get priceInCredits() : int
      {
         return var_857;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_415 = const_476;
            }
            else
            {
               var_415 = const_361;
            }
         }
         else if(param1.length > 1)
         {
            var_415 = const_412;
         }
         else
         {
            var_415 = const_1262;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_415)
         {
            case const_476:
               var_416 = new SingleProductContainer(this,param1);
               break;
            case const_361:
               var_416 = new MultiProductContainer(this,param1);
               break;
            case const_412:
               var_416 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_415);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_857 > 0 && var_856 > 0)
         {
            var_596 = const_414;
         }
         else if(var_857 > 0)
         {
            var_596 = const_460;
         }
         else if(var_856 > 0)
         {
            var_596 = const_442;
         }
         else
         {
            var_596 = const_1004;
         }
      }
   }
}
