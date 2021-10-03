package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1155:int;
      
      private var var_1066:String;
      
      private var var_683:Array;
      
      private var var_969:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_683.slice();
      }
      
      public function flush() : Boolean
      {
         var_1066 = "";
         var_969 = [];
         var_683 = [];
         var_1155 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1155;
      }
      
      public function get question() : String
      {
         return var_1066;
      }
      
      public function get choices() : Array
      {
         return var_969.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1066 = param1.readString();
         var_969 = [];
         var_683 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_969.push(param1.readString());
            var_683.push(param1.readInteger());
            _loc3_++;
         }
         var_1155 = param1.readInteger();
         return true;
      }
   }
}
