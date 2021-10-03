package com.sulake.habbo.widget.events
{
   public class RoomWidgetChatInputContentUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_865:String = "whisper";
      
      public static const const_1207:String = "shout";
      
      public static const const_704:String = "RWWCIDE_CHAT_INPUT_CONTENT";
       
      
      private var var_1833:String = "";
      
      private var _userName:String = "";
      
      public function RoomWidgetChatInputContentUpdateEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_704,param3,param4);
         var_1833 = param1;
         _userName = param2;
      }
      
      public function get messageType() : String
      {
         return var_1833;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
