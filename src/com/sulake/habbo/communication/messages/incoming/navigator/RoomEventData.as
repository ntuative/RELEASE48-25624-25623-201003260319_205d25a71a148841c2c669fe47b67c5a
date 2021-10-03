package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_2095:String;
      
      private var var_436:int;
      
      private var var_2144:String;
      
      private var var_2145:String;
      
      private var var_2146:int;
      
      private var var_2147:String;
      
      private var var_2148:int;
      
      private var var_627:Array;
      
      private var var_963:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_627 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_963 = false;
            return;
         }
         this.var_963 = true;
         var_2146 = int(_loc2_);
         var_2144 = param1.readString();
         var_436 = int(param1.readString());
         var_2148 = param1.readInteger();
         var_2095 = param1.readString();
         var_2145 = param1.readString();
         var_2147 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_627.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_2148;
      }
      
      public function get eventName() : String
      {
         return var_2095;
      }
      
      public function get eventDescription() : String
      {
         return var_2145;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_2144;
      }
      
      public function get tags() : Array
      {
         return var_627;
      }
      
      public function get creationTime() : String
      {
         return var_2147;
      }
      
      public function get exists() : Boolean
      {
         return var_963;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_2146;
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
         this.var_627 = null;
      }
      
      public function get flatId() : int
      {
         return var_436;
      }
   }
}
