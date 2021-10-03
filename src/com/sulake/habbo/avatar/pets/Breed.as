package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_675:String;
      
      private var _id:int;
      
      private var var_2188:String = "";
      
      private var var_2187:int;
      
      private var var_2186:String;
      
      private var var_1728:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2187 = parseInt(param1.@pattern);
         var_675 = String(param1.@gender);
         var_1728 = Boolean(parseInt(param1.@colorable));
         var_2188 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2188;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1728;
      }
      
      public function get gender() : String
      {
         return var_675;
      }
      
      public function get patternId() : int
      {
         return var_2187;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2186;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2186 = param1;
      }
   }
}
