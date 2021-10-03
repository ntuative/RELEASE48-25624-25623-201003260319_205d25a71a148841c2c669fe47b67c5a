package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1006:String;
      
      private var var_1662:int;
      
      private var var_1664:int;
      
      private var var_1403:int;
      
      private var var_1665:int;
      
      private var _category:int;
      
      private var var_2354:int;
      
      private var var_1663:int;
      
      private var var_1661:int;
      
      private var var_1659:int;
      
      private var var_1660:int;
      
      private var var_1658:Boolean;
      
      private var var_1373:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1662 = param1;
         var_1006 = param2;
         var_1664 = param3;
         var_1659 = param4;
         _category = param5;
         var_1373 = param6;
         var_1403 = param7;
         var_1661 = param8;
         var_1663 = param9;
         var_1660 = param10;
         var_1665 = param11;
         var_1658 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1659;
      }
      
      public function get extra() : int
      {
         return var_1403;
      }
      
      public function get stuffData() : String
      {
         return var_1373;
      }
      
      public function get groupable() : Boolean
      {
         return var_1658;
      }
      
      public function get creationMonth() : int
      {
         return var_1660;
      }
      
      public function get roomItemID() : int
      {
         return var_1664;
      }
      
      public function get itemType() : String
      {
         return var_1006;
      }
      
      public function get itemID() : int
      {
         return var_1662;
      }
      
      public function get songID() : int
      {
         return var_1403;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1661;
      }
      
      public function get creationYear() : int
      {
         return var_1665;
      }
      
      public function get creationDay() : int
      {
         return var_1663;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
