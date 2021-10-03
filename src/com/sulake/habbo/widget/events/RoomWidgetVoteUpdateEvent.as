package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_131:String = "RWPUE_VOTE_RESULT";
      
      public static const const_121:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1155:int;
      
      private var var_1066:String;
      
      private var var_683:Array;
      
      private var var_969:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1066 = param2;
         var_969 = param3;
         var_683 = param4;
         if(var_683 == null)
         {
            var_683 = [];
         }
         var_1155 = param5;
      }
      
      public function get votes() : Array
      {
         return var_683.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1155;
      }
      
      public function get question() : String
      {
         return var_1066;
      }
      
      public function get choices() : Array
      {
         return var_969.slice();
      }
   }
}
