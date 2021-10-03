package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_855:Array;
      
      private var var_857:int;
      
      private var var_1243:String;
      
      private var _offerId:int;
      
      private var var_856:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1243 = param1.readString();
         var_857 = param1.readInteger();
         var_856 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_855 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_855.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_855;
      }
      
      public function get priceInCredits() : int
      {
         return var_857;
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
   }
}
