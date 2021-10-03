package com.sulake.habbo.communication.messages.outgoing.room.action
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class RemoveRightsMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_28:Array;
      
      public function RemoveRightsMessageComposer(param1:Array)
      {
         var_28 = new Array();
         super();
         this.var_28.push(param1.length);
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.var_28.push(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
      
      public function getMessageArray() : Array
      {
         return this.var_28;
      }
      
      public function dispose() : void
      {
         this.var_28 = null;
      }
   }
}
