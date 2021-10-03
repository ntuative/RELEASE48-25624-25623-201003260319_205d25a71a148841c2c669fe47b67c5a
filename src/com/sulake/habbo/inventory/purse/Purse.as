package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1751:Boolean = false;
      
      private var var_1755:int = 0;
      
      private var var_1752:int = 0;
      
      private var var_1753:int = 0;
      
      private var var_1491:int = 0;
      
      private var var_1754:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1491 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1755;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1751;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1751 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1755 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1752 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1491;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1753 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1752;
      }
      
      public function get pixelBalance() : int
      {
         return var_1753;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1754 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1754;
      }
   }
}
