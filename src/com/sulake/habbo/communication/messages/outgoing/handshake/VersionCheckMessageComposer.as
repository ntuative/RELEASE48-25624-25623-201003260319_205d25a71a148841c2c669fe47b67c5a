package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1621:String;
      
      private var var_1207:String;
      
      private var var_1622:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1622 = param1;
         var_1207 = param2;
         var_1621 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1622,var_1207,var_1621];
      }
      
      public function dispose() : void
      {
      }
   }
}
