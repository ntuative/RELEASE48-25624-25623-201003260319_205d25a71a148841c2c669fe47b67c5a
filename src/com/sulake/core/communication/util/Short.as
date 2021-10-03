package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_739:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_739 = new ByteArray();
         var_739.writeShort(param1);
         var_739.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_739.position = 0;
         if(false)
         {
            _loc1_ = var_739.readShort();
            var_739.position = 0;
         }
         return _loc1_;
      }
   }
}
