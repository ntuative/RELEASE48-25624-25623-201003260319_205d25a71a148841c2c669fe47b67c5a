package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_974:Boolean;
      
      private var _name:String;
      
      private var var_1676:String;
      
      private var var_975:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_1676 = String(param1.@link);
         var_975 = Boolean(parseInt(param1.@fliph));
         var_974 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_975;
      }
      
      public function get flipV() : Boolean
      {
         return var_974;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_1676;
      }
   }
}
