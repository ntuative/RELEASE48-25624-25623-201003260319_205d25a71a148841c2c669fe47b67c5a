package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1707:int;
      
      private var var_2154:String;
      
      private var var_2152:int;
      
      private var var_2151:int;
      
      private var var_725:Boolean;
      
      private var var_1692:Boolean;
      
      private var var_436:int;
      
      private var var_1144:String;
      
      private var var_1688:int;
      
      private var var_1177:int;
      
      private var _ownerName:String;
      
      private var var_694:String;
      
      private var var_2150:int;
      
      private var var_2149:RoomThumbnailData;
      
      private var var_2153:Boolean;
      
      private var var_627:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_627 = new Array();
         super();
         var_436 = param1.readInteger();
         var_725 = param1.readBoolean();
         var_694 = param1.readString();
         _ownerName = param1.readString();
         var_1688 = param1.readInteger();
         var_1707 = param1.readInteger();
         var_2150 = param1.readInteger();
         var_1144 = param1.readString();
         var_2152 = param1.readInteger();
         var_2153 = param1.readBoolean();
         var_2151 = param1.readInteger();
         var_1177 = param1.readInteger();
         var_2154 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_627.push(_loc4_);
            _loc3_++;
         }
         var_2149 = new RoomThumbnailData(param1);
         var_1692 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2150;
      }
      
      public function get roomName() : String
      {
         return var_694;
      }
      
      public function get userCount() : int
      {
         return var_1707;
      }
      
      public function get score() : int
      {
         return var_2151;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2154;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_2153;
      }
      
      public function get tags() : Array
      {
         return var_627;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1692;
      }
      
      public function get event() : Boolean
      {
         return var_725;
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
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1177;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2152;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2149;
      }
      
      public function get doorMode() : int
      {
         return var_1688;
      }
      
      public function get flatId() : int
      {
         return var_436;
      }
      
      public function get description() : String
      {
         return var_1144;
      }
   }
}
