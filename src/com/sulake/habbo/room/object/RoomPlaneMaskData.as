package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_1896:Number = 0;
      
      private var var_1814:Number = 0;
      
      private var var_1815:Number = 0;
      
      private var var_1895:Number = 0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1814 = param1;
         var_1815 = param2;
         var_1896 = param3;
         var_1895 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1814;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1896;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1815;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1895;
      }
   }
}
