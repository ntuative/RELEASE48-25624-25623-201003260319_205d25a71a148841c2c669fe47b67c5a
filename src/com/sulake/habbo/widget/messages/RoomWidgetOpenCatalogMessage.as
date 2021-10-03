package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_801:String = "RWOCM_CLUB_MAIN";
      
      public static const const_737:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_2031:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_737);
         var_2031 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_2031;
      }
   }
}
