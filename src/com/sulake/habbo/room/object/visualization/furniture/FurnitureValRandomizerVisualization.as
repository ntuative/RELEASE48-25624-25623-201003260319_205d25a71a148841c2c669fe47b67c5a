package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1070:int = 31;
      
      private static const const_1071:int = 32;
      
      private static const const_488:int = 30;
      
      private static const const_759:int = 20;
      
      private static const const_489:int = 10;
       
      
      private var var_618:Boolean = false;
      
      private var var_222:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_222 = new Array();
         super();
         super.setAnimation(const_488);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_618 = true;
            var_222 = new Array();
            var_222.push(const_1070);
            var_222.push(const_1071);
            return;
         }
         if(param1 > 0 && param1 <= const_489)
         {
            if(var_618)
            {
               var_618 = false;
               var_222 = new Array();
               if(_direction == 2)
               {
                  var_222.push(const_759 + 5 - param1);
                  var_222.push(const_489 + 5 - param1);
               }
               else
               {
                  var_222.push(const_759 + param1);
                  var_222.push(const_489 + param1);
               }
               var_222.push(const_488);
               return;
            }
            super.setAnimation(const_488);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
