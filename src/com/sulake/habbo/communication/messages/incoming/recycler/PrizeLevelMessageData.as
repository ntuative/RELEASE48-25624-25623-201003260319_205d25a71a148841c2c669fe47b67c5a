package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeLevelMessageData
   {
       
      
      private var var_2116:int;
      
      private var var_1351:int;
      
      private var var_754:Array;
      
      public function PrizeLevelMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1351 = param1.readInteger();
         var_2116 = param1.readInteger();
         var_754 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_754.push(new PrizeMessageData(param1));
            _loc3_++;
         }
      }
      
      public function get probabilityDenominator() : int
      {
         return var_2116;
      }
      
      public function get prizes() : Array
      {
         return var_754;
      }
      
      public function get prizeLevelId() : int
      {
         return var_1351;
      }
   }
}
