package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1070:int = 31;
      
      private static const const_1071:int = 32;
      
      private static const const_759:int = 10;
      
      private static const const_489:int = 20;
       
      
      private var var_618:Boolean = false;
      
      private var var_222:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_222 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_618 = true;
            var_222 = new Array();
            var_222.push(const_1070);
            var_222.push(const_1071);
            return;
         }
         if(param1 > 0 && param1 <= const_759)
         {
            if(var_618)
            {
               var_618 = false;
               var_222 = new Array();
               var_222.push(const_759 + param1);
               var_222.push(const_489 + param1);
               var_222.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(false)
            {
               super.setAnimation(var_222.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
