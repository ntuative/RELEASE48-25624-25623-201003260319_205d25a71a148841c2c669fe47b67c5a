package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_212:String = "e";
      
      public static const const_81:String = "i";
      
      public static const const_77:String = "s";
       
      
      private var var_1083:String;
      
      private var var_1348:String;
      
      private var var_1349:int;
      
      private var var_1782:int;
      
      private var var_1084:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1348 = param1.readString();
         var_1782 = param1.readInteger();
         var_1083 = param1.readString();
         var_1084 = param1.readInteger();
         var_1349 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1084;
      }
      
      public function get productType() : String
      {
         return var_1348;
      }
      
      public function get expiration() : int
      {
         return var_1349;
      }
      
      public function get furniClassId() : int
      {
         return var_1782;
      }
      
      public function get extraParam() : String
      {
         return var_1083;
      }
   }
}
