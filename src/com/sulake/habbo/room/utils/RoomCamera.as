package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_349:Number = 0.5;
      
      private static const const_781:int = 3;
      
      private static const const_1119:Number = 1;
       
      
      private var var_2107:Boolean = false;
      
      private var var_2104:Boolean = false;
      
      private var var_1054:int = 0;
      
      private var var_278:Vector3d = null;
      
      private var var_2103:int = 0;
      
      private var var_2105:int = 0;
      
      private var var_2108:Boolean = false;
      
      private var var_2102:int = -2;
      
      private var var_2106:Boolean = false;
      
      private var var_2100:int = 0;
      
      private var var_2099:int = -1;
      
      private var var_426:Vector3d = null;
      
      private var var_2101:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2103;
      }
      
      public function get targetId() : int
      {
         return var_2099;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2100 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2103 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2107 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2099 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2104 = param1;
      }
      
      public function dispose() : void
      {
         var_426 = null;
         var_278 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_426 == null)
         {
            var_426 = new Vector3d();
         }
         var_426.assign(param1);
         var_1054 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2102;
      }
      
      public function get screenHt() : int
      {
         return var_2101;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2105 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_278;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2101 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2100;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2107;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2104;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_426 != null && var_278 != null)
         {
            ++var_1054;
            _loc2_ = Vector3d.dif(var_426,var_278);
            if(_loc2_.length <= const_349)
            {
               var_278 = var_426;
               var_426 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_349 * (const_781 + 1))
               {
                  _loc2_.mul(const_349);
               }
               else if(var_1054 <= const_781)
               {
                  _loc2_.mul(const_349);
               }
               else
               {
                  _loc2_.mul(const_1119);
               }
               var_278 = Vector3d.sum(var_278,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2108 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2105;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2106 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2102 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_278 != null)
         {
            return;
         }
         var_278 = new Vector3d();
         var_278.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2108;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2106;
      }
   }
}
