package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_402:String = "";
      
      private var var_1922:String = "";
      
      private var var_1924:int = 0;
      
      private var var_1927:int = 0;
      
      private var _type:int = 0;
      
      private var var_1921:String = "";
      
      private var var_1360:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1925:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1924 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1921 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_402 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_1360 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1924;
      }
      
      public function set webID(param1:int) : void
      {
         var_1925 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1921;
      }
      
      public function set custom(param1:String) : void
      {
         var_1922 = param1;
      }
      
      public function get figure() : String
      {
         return var_402;
      }
      
      public function get sex() : String
      {
         return var_1360;
      }
      
      public function get custom() : String
      {
         return var_1922;
      }
      
      public function get webID() : int
      {
         return var_1925;
      }
      
      public function set xp(param1:int) : void
      {
         var_1927 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1927;
      }
   }
}
