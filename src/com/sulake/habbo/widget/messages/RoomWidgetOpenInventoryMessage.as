package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_887:String = "inventory_badges";
      
      public static const const_1336:String = "inventory_clothes";
      
      public static const const_1344:String = "inventory_furniture";
      
      public static const const_715:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_867:String = "inventory_effects";
       
      
      private var var_1767:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_715);
         var_1767 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1767;
      }
   }
}
