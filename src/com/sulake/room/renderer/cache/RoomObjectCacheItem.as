package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_567:RoomObjectLocationCacheItem = null;
      
      private var var_174:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_567 = new RoomObjectLocationCacheItem(param1);
         var_174 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_567;
      }
      
      public function dispose() : void
      {
         if(var_567 != null)
         {
            var_567.dispose();
            var_567 = null;
         }
         if(var_174 != null)
         {
            var_174.dispose();
            var_174 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_174;
      }
   }
}
