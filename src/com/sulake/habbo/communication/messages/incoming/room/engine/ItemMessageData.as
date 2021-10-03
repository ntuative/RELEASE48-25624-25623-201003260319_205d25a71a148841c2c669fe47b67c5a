package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_81:Number = 0;
      
      private var _data:String = "";
      
      private var var_1403:int = 0;
      
      private var var_31:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_1966:Boolean = false;
      
      private var var_2362:String = "";
      
      private var _id:int = 0;
      
      private var var_192:Boolean = false;
      
      private var var_227:String = "";
      
      private var var_1965:int = 0;
      
      private var var_1964:int = 0;
      
      private var var_1861:int = 0;
      
      private var var_1862:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_1966 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_192)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_1966;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_192)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_227;
      }
      
      public function get state() : int
      {
         return var_31;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_192)
         {
            var_1861 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_192)
         {
            var_1965 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_192)
         {
            var_1964 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_192)
         {
            var_227 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_192)
         {
            var_1862 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_192)
         {
            var_31 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1861;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_192)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_1965;
      }
      
      public function get wallY() : Number
      {
         return var_1964;
      }
      
      public function get localY() : Number
      {
         return var_1862;
      }
      
      public function setReadOnly() : void
      {
         var_192 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_81;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_192)
         {
            var_81 = param1;
         }
      }
   }
}
