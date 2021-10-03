package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_661:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_532:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_661);
         var_532 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_532;
      }
   }
}
