package com.sulake.habbo.communication.messages.incoming.inventory.avatareffect
{
   public class AvatarEffect
   {
       
      
      private var var_1954:int;
      
      private var var_1267:int;
      
      private var _type:int;
      
      private var var_1955:int;
      
      public function AvatarEffect()
      {
         super();
      }
      
      public function get inactiveEffectsInInventory() : int
      {
         return var_1955;
      }
      
      public function set secondsLeftIfActive(param1:int) : void
      {
         var_1954 = param1;
      }
      
      public function get duration() : int
      {
         return var_1267;
      }
      
      public function set inactiveEffectsInInventory(param1:int) : void
      {
         var_1955 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1267 = param1;
      }
      
      public function get secondsLeftIfActive() : int
      {
         return var_1954;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
   }
}
