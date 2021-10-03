package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_433:FloorRasterizer;
      
      private var var_873:Boolean = false;
      
      private var var_613:PlaneMaskManager;
      
      private var var_432:WallRasterizer;
      
      private var var_612:WallAdRasterizer;
      
      private var var_431:LandscapeRasterizer;
      
      public function RoomVisualizationData()
      {
         super();
         var_432 = new WallRasterizer();
         var_433 = new FloorRasterizer();
         var_612 = new WallAdRasterizer();
         var_431 = new LandscapeRasterizer();
         var_613 = new PlaneMaskManager();
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return var_432;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return var_612;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return var_433;
      }
      
      public function get initialized() : Boolean
      {
         return var_873;
      }
      
      protected function reset() : void
      {
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return var_613;
      }
      
      public function dispose() : void
      {
         if(var_432 != null)
         {
            var_432.dispose();
            var_432 = null;
         }
         if(var_433 != null)
         {
            var_433.dispose();
            var_433 = null;
         }
         if(var_612 != null)
         {
            var_612.dispose();
            var_612 = null;
         }
         if(var_431 != null)
         {
            var_431.dispose();
            var_431 = null;
         }
         if(var_613 != null)
         {
            var_613.dispose();
            var_613 = null;
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            var_432.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            var_433.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            var_612.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            var_431.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            var_613.initialize(_loc11_);
         }
         return true;
      }
      
      public function clearCache() : void
      {
         if(var_432 != null)
         {
            var_432.clearCache();
         }
         if(var_433 != null)
         {
            var_433.clearCache();
         }
         if(var_431 != null)
         {
            var_431.clearCache();
         }
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return var_431;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(var_873)
         {
            return;
         }
         var_432.initializeAssetCollection(param1);
         var_433.initializeAssetCollection(param1);
         var_612.initializeAssetCollection(param1);
         var_431.initializeAssetCollection(param1);
         var_613.initializeAssetCollection(param1);
         var_873 = true;
      }
   }
}
