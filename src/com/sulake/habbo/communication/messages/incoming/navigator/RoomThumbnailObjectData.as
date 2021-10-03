package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1388:int;
      
      private var var_1387:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1388;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1388 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1388 = this.var_1388;
         _loc1_.var_1387 = this.var_1387;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1387 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1387;
      }
   }
}
