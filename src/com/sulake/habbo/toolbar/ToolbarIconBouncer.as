package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1824:Number;
      
      private var var_567:Number = 0;
      
      private var var_1825:Number;
      
      private var var_568:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1824 = param1;
         var_1825 = param2;
      }
      
      public function update() : void
      {
         var_568 += var_1825;
         var_567 += var_568;
         if(var_567 > 0)
         {
            var_567 = 0;
            var_568 = var_1824 * -1 * var_568;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_568 = param1;
         var_567 = 0;
      }
      
      public function get location() : Number
      {
         return var_567;
      }
   }
}
