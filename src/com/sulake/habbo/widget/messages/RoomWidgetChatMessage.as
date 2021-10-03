package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_125:int = 0;
      
      public static const const_118:int = 1;
      
      public static const const_102:int = 2;
      
      public static const const_694:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1194:int = 0;
      
      private var var_2057:String = "";
      
      private var var_186:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_186 = param2;
         var_1194 = param3;
         var_2057 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_2057;
      }
      
      public function get chatType() : int
      {
         return var_1194;
      }
      
      public function get text() : String
      {
         return var_186;
      }
   }
}
