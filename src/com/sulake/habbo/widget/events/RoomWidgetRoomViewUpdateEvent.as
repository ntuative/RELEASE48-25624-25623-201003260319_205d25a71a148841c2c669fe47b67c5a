package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_525:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_630:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_270:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1466:Point;
      
      private var var_1465:Rectangle;
      
      private var var_184:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1465 = param2;
         var_1466 = param3;
         var_184 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1465 != null)
         {
            return var_1465.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_184;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1466 != null)
         {
            return var_1466.clone();
         }
         return null;
      }
   }
}
