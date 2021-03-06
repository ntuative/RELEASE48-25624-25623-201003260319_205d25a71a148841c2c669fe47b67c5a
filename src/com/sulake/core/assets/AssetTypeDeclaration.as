package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2170:Class;
      
      private var var_2172:Class;
      
      private var var_2171:String;
      
      private var var_1318:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2171 = param1;
         var_2172 = param2;
         var_2170 = param3;
         if(rest == null)
         {
            var_1318 = new Array();
         }
         else
         {
            var_1318 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2170;
      }
      
      public function get assetClass() : Class
      {
         return var_2172;
      }
      
      public function get mimeType() : String
      {
         return var_2171;
      }
      
      public function get fileTypes() : Array
      {
         return var_1318;
      }
   }
}
