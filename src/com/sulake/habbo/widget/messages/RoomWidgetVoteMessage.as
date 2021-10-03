package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_128:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1255:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_128);
         var_1255 = param1;
      }
      
      public function get vote() : int
      {
         return var_1255;
      }
   }
}
