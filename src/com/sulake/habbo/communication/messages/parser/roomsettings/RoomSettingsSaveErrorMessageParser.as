package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1547:int = 9;
      
      public static const const_1548:int = 4;
      
      public static const const_1442:int = 1;
      
      public static const const_1360:int = 10;
      
      public static const const_1443:int = 2;
      
      public static const const_1328:int = 7;
      
      public static const const_1143:int = 11;
      
      public static const const_1606:int = 3;
      
      public static const const_1332:int = 8;
      
      public static const const_1209:int = 5;
      
      public static const const_1496:int = 6;
      
      public static const const_1351:int = 12;
       
      
      private var var_1686:String;
      
      private var _roomId:int;
      
      private var var_1138:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1686;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1138 = param1.readInteger();
         var_1686 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1138;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
