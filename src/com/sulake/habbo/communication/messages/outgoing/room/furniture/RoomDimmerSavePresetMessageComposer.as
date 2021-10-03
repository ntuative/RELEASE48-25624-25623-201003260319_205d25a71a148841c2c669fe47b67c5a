package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1835:int;
      
      private var var_1837:int;
      
      private var var_1836:Boolean;
      
      private var var_1838:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1839:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1837 = param1;
         var_1835 = param2;
         var_1838 = param3;
         var_1839 = param4;
         var_1836 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1837,var_1835,var_1838,var_1839,int(var_1836)];
      }
      
      public function dispose() : void
      {
      }
   }
}
