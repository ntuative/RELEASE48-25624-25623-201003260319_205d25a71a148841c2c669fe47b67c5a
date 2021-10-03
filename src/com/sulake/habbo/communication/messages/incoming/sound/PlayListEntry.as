package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1758:int;
      
      private var var_1757:int = 0;
      
      private var var_1759:String;
      
      private var var_1761:int;
      
      private var var_1760:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1758 = param1;
         var_1761 = param2;
         var_1760 = param3;
         var_1759 = param4;
      }
      
      public function get length() : int
      {
         return var_1761;
      }
      
      public function get name() : String
      {
         return var_1760;
      }
      
      public function get creator() : String
      {
         return var_1759;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1757;
      }
      
      public function get id() : int
      {
         return var_1758;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1757 = param1;
      }
   }
}
