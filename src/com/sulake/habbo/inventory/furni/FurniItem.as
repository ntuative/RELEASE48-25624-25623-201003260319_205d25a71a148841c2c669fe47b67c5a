package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1808:int;
      
      private var var_1805:Boolean;
      
      private var var_1758:int;
      
      private var var_1373:String;
      
      private var var_1809:Boolean = false;
      
      private var var_1792:int;
      
      private var var_450:int;
      
      private var var_1006:String;
      
      private var var_1451:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1261:int;
      
      private var var_1806:Boolean;
      
      private var var_1807:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1808 = param1;
         var_1006 = param2;
         _objId = param3;
         var_1261 = param4;
         var_1373 = param5;
         var_1805 = param6;
         var_1806 = param7;
         var_1792 = param8;
         var_1451 = param9;
         var_1758 = param10;
         var_450 = -1;
      }
      
      public function get songId() : int
      {
         return var_1758;
      }
      
      public function get iconCallbackId() : int
      {
         return var_450;
      }
      
      public function get expiryTime() : int
      {
         return var_1792;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1807 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1809 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_450 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1806;
      }
      
      public function get slotId() : String
      {
         return var_1451;
      }
      
      public function get classId() : int
      {
         return var_1261;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1805;
      }
      
      public function get stuffData() : String
      {
         return var_1373;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1808;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1809;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1807;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1006;
      }
   }
}
