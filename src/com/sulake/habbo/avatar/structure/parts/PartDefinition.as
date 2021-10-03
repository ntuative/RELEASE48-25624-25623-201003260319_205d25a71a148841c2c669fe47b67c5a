package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1557:int = -1;
      
      private var var_1315:Boolean;
      
      private var var_1316:String;
      
      private var var_2161:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_2161 = String(param1["set-type"]);
         var_1316 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1315 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1557 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1316;
      }
      
      public function get staticId() : int
      {
         return var_1557;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1557 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1315;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1315 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1316 = param1;
      }
      
      public function get setType() : String
      {
         return var_2161;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
