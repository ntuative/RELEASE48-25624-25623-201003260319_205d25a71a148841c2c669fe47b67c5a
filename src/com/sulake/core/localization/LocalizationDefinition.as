package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1494:String;
      
      private var var_934:String;
      
      private var var_1493:String;
      
      private var var_1495:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1495 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1494 = _loc5_[0];
         var_1493 = _loc5_[1];
         _name = param2;
         var_934 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1494;
      }
      
      public function get languageCode() : String
      {
         return var_1495;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_934;
      }
      
      public function get encoding() : String
      {
         return var_1493;
      }
      
      public function get id() : String
      {
         return var_1495 + "_" + var_1494 + "." + var_1493;
      }
   }
}
