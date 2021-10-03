package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_269:String = "RWFAM_MOVE";
      
      public static const const_586:String = "RWFUAM_ROTATE";
      
      public static const const_618:String = "RWFAM_PICKUP";
       
      
      private var var_1796:int = 0;
      
      private var var_2226:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1796 = param2;
         var_2226 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1796;
      }
      
      public function get furniCategory() : int
      {
         return var_2226;
      }
   }
}
