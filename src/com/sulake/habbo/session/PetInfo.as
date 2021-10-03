package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1739:int;
      
      private var var_1694:int;
      
      private var var_1743:int;
      
      private var var_1733:int;
      
      private var _nutrition:int;
      
      private var var_1186:int;
      
      private var var_1737:int;
      
      private var var_1736:int;
      
      private var _energy:int;
      
      private var var_1740:int;
      
      private var var_1741:int;
      
      private var _ownerName:String;
      
      private var var_1742:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1739;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1694 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1739 = param1;
      }
      
      public function get petId() : int
      {
         return var_1186;
      }
      
      public function get experienceMax() : int
      {
         return var_1736;
      }
      
      public function get nutritionMax() : int
      {
         return var_1733;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1737 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1742;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1186 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1741;
      }
      
      public function get respect() : int
      {
         return var_1694;
      }
      
      public function get levelMax() : int
      {
         return var_1737;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1736 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1743 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1733 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1742 = param1;
      }
      
      public function get experience() : int
      {
         return var_1743;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1741 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1740 = param1;
      }
      
      public function get age() : int
      {
         return var_1740;
      }
   }
}
