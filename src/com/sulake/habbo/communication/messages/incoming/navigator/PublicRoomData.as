package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1715:int;
      
      private var var_1950:String;
      
      private var var_1725:int;
      
      private var _disposed:Boolean;
      
      private var var_1952:int;
      
      private var var_1951:String;
      
      private var var_1221:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1951 = param1.readString();
         var_1715 = param1.readInteger();
         var_1725 = param1.readInteger();
         var_1950 = param1.readString();
         var_1952 = param1.readInteger();
         var_1221 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1952;
      }
      
      public function get worldId() : int
      {
         return var_1725;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1951;
      }
      
      public function get unitPort() : int
      {
         return var_1715;
      }
      
      public function get castLibs() : String
      {
         return var_1950;
      }
      
      public function get nodeId() : int
      {
         return var_1221;
      }
   }
}
