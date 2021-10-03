package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_945:String = "select_outfit";
       
      
      private var var_2040:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_945);
         var_2040 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2040;
      }
   }
}
