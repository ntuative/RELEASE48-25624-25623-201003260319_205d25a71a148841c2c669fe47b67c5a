package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_735:int = -1;
      
      public static const const_829:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1812:int = -1;
      
      private var var_80:int = 0;
      
      private var var_1172:int = 1;
      
      private var var_799:int = 1;
      
      private var var_1813:Boolean = false;
      
      private var var_1811:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_80 = param2;
         _y = param3;
         var_1813 = param5;
         if(param4 < 0)
         {
            param4 = const_735;
         }
         var_799 = param4;
         var_1172 = param4;
         if(param6 >= 0)
         {
            var_1812 = param6;
            var_1811 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_799 > 0 && param1 > var_799)
         {
            param1 = var_799;
         }
         var_1172 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_799;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1811;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_799 < 0)
         {
            return const_735;
         }
         return var_1172;
      }
      
      public function get activeSequence() : int
      {
         return var_1812;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1813;
      }
      
      public function get x() : int
      {
         return var_80;
      }
   }
}
