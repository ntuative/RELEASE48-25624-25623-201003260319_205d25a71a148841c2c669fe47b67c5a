package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1089:int = 80;
       
      
      private var var_491:Map;
      
      private var var_694:String = "";
      
      private var var_1238:Array;
      
      public function UserRegistry()
      {
         var_491 = new Map();
         var_1238 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_491.getValue(var_1238.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_694;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_491.getValue(param1) != null)
         {
            var_491.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_694);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_694 == "")
         {
            var_1238.push(param1);
         }
         var_491.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_491;
      }
      
      public function unregisterRoom() : void
      {
         var_694 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_491.length > const_1089)
         {
            _loc1_ = var_491.getKey(0);
            var_491.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_694 = param1;
         if(var_694 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
