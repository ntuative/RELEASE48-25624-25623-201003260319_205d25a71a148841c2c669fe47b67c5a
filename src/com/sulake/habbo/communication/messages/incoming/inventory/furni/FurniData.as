package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1373:String;
      
      private var var_1006:String;
      
      private var var_2066:Boolean;
      
      private var var_1403:int;
      
      private var var_1808:int;
      
      private var var_2067:Boolean;
      
      private var var_1451:String = "";
      
      private var var_1805:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1261:int;
      
      private var var_1806:Boolean;
      
      private var var_1758:int = -1;
      
      private var var_1792:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1808 = param1;
         var_1006 = param2;
         _objId = param3;
         var_1261 = param4;
         _category = param5;
         var_1373 = param6;
         var_2066 = param7;
         var_1805 = param8;
         var_1806 = param9;
         var_2067 = param10;
         var_1792 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1451;
      }
      
      public function get extra() : int
      {
         return var_1403;
      }
      
      public function get classId() : int
      {
         return var_1261;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_2067;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2066;
      }
      
      public function get stripId() : int
      {
         return var_1808;
      }
      
      public function get stuffData() : String
      {
         return var_1373;
      }
      
      public function get songId() : int
      {
         return var_1758;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1451 = param1;
         var_1403 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1006;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1792;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1806;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1805;
      }
   }
}
