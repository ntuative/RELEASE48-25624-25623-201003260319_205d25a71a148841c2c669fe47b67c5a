package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_81:Number = 0;
      
      private var var_227:int = 0;
      
      private var var_1929:int = 0;
      
      private var var_2123:Number = 0;
      
      private var var_2125:Number = 0;
      
      private var var_2121:Number = 0;
      
      private var var_2122:Number = 0;
      
      private var var_2124:Boolean = false;
      
      private var var_80:Number = 0;
      
      private var _id:int = 0;
      
      private var var_185:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_185 = [];
         super();
         _id = param1;
         var_80 = param2;
         _y = param3;
         var_81 = param4;
         var_2122 = param5;
         var_227 = param6;
         var_1929 = param7;
         var_2123 = param8;
         var_2125 = param9;
         var_2121 = param10;
         var_2124 = param11;
         var_185 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_81;
      }
      
      public function get dir() : int
      {
         return var_227;
      }
      
      public function get localZ() : Number
      {
         return var_2122;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2124;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1929;
      }
      
      public function get targetX() : Number
      {
         return var_2123;
      }
      
      public function get targetY() : Number
      {
         return var_2125;
      }
      
      public function get targetZ() : Number
      {
         return var_2121;
      }
      
      public function get x() : Number
      {
         return var_80;
      }
      
      public function get actions() : Array
      {
         return var_185.slice();
      }
   }
}
