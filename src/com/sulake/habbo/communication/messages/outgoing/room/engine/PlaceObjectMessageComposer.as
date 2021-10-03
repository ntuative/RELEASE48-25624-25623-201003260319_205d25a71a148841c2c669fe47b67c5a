package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_148:int;
      
      private var var_227:int = 0;
      
      private var _roomId:int;
      
      private var var_80:int = 0;
      
      private var _y:int = 0;
      
      private var var_1649:int;
      
      private var var_1650:String;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         var_148 = param1;
         var_1649 = param2;
         var_1650 = param3;
         var_80 = param4;
         _y = param5;
         var_227 = param6;
         _roomId = param7;
         _roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(var_1649)
         {
            case RoomObjectCategoryEnum.const_31:
               return [var_148 + " " + var_80 + " " + _y + " " + var_227];
            case RoomObjectCategoryEnum.const_29:
               return [var_148 + " " + var_1650];
            default:
               return [];
         }
      }
   }
}
