package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_469:int = 0;
      
      public static const const_120:int = 2;
      
      public static const const_172:int = 1;
      
      public static const const_528:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_1689:Boolean;
      
      private var var_1687:Boolean;
      
      private var var_1874:int;
      
      private var var_1690:Array;
      
      private var var_1875:int;
      
      private var var_1692:Boolean;
      
      private var var_1144:String;
      
      private var var_1691:int;
      
      private var var_1688:int;
      
      private var var_1177:int;
      
      private var _roomId:int;
      
      private var var_627:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1691;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1691 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_627;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1692;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_1875 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1690 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_627 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1689;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1687;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_1874;
      }
      
      public function get categoryId() : int
      {
         return var_1177;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1692 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_1875;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1690;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1688 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1689 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1687 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_1874 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1688;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1177 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1144 = param1;
      }
      
      public function get description() : String
      {
         return var_1144;
      }
   }
}
