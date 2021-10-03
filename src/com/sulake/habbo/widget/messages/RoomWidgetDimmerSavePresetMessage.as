package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_664:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1835:int;
      
      private var var_1837:int;
      
      private var var_2017:Boolean;
      
      private var var_1057:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_664);
         var_1837 = param1;
         var_1835 = param2;
         _color = param3;
         var_1057 = param4;
         var_2017 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1835;
      }
      
      public function get presetNumber() : int
      {
         return var_1837;
      }
      
      public function get brightness() : int
      {
         return var_1057;
      }
      
      public function get apply() : Boolean
      {
         return var_2017;
      }
   }
}
