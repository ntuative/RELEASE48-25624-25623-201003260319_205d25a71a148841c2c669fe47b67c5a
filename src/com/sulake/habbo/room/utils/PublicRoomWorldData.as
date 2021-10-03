package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1826:Number = 1;
      
      private var var_184:Number = 1;
      
      private var var_1972:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1972 = param1;
         var_184 = param2;
         var_1826 = param3;
      }
      
      public function get scale() : Number
      {
         return var_184;
      }
      
      public function get heightScale() : Number
      {
         return var_1826;
      }
   }
}
