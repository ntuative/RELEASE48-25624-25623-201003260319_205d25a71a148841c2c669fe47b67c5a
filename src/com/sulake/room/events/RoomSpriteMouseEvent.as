package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1714:Boolean = false;
      
      private var var_1711:Boolean = false;
      
      private var var_1858:String = "";
      
      private var _type:String = "";
      
      private var var_1712:Boolean = false;
      
      private var var_1861:Number = 0;
      
      private var var_1860:Number = 0;
      
      private var var_1857:Number = 0;
      
      private var var_1859:String = "";
      
      private var var_1862:Number = 0;
      
      private var var_1713:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1859 = param2;
         var_1858 = param3;
         var_1860 = param4;
         var_1857 = param5;
         var_1861 = param6;
         var_1862 = param7;
         var_1713 = param8;
         var_1711 = param9;
         var_1712 = param10;
         var_1714 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1713;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1714;
      }
      
      public function get localX() : Number
      {
         return var_1861;
      }
      
      public function get localY() : Number
      {
         return var_1862;
      }
      
      public function get canvasId() : String
      {
         return var_1859;
      }
      
      public function get altKey() : Boolean
      {
         return var_1711;
      }
      
      public function get spriteTag() : String
      {
         return var_1858;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1860;
      }
      
      public function get screenY() : Number
      {
         return var_1857;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1712;
      }
   }
}
