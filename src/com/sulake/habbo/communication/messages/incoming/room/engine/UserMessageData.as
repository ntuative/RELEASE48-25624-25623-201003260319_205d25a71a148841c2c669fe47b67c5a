package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1228:String = "F";
      
      public static const const_997:String = "M";
       
      
      private var var_80:Number = 0;
      
      private var var_402:String = "";
      
      private var var_1923:int = 0;
      
      private var var_1922:String = "";
      
      private var var_1924:int = 0;
      
      private var var_1927:int = 0;
      
      private var var_1921:String = "";
      
      private var var_1360:String = "";
      
      private var _id:int = 0;
      
      private var var_192:Boolean = false;
      
      private var var_227:int = 0;
      
      private var var_1926:String = "";
      
      private var _name:String = "";
      
      private var var_1925:int = 0;
      
      private var _y:Number = 0;
      
      private var var_81:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_81;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_227;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_192)
         {
            var_227 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_192)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1923;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_192)
         {
            var_1924 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1926;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_192)
         {
            var_1921 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_192)
         {
            var_1926 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_192)
         {
            var_1927 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_192)
         {
            var_402 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_192)
         {
            var_1923 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_192)
         {
            var_1360 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1924;
      }
      
      public function get groupID() : String
      {
         return var_1921;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_192)
         {
            var_1925 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_192)
         {
            var_1922 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_192 = true;
      }
      
      public function get sex() : String
      {
         return var_1360;
      }
      
      public function get figure() : String
      {
         return var_402;
      }
      
      public function get webID() : int
      {
         return var_1925;
      }
      
      public function get custom() : String
      {
         return var_1922;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_192)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_192)
         {
            var_81 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_192)
         {
            var_80 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_80;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1927;
      }
   }
}
