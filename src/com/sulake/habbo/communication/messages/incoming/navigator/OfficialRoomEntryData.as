package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1249:int = 4;
      
      public static const const_550:int = 3;
      
      public static const const_733:int = 2;
      
      public static const const_988:int = 1;
       
      
      private var var_1710:String;
      
      private var _disposed:Boolean;
      
      private var var_1707:int;
      
      private var var_1709:Boolean;
      
      private var var_866:String;
      
      private var var_787:PublicRoomData;
      
      private var var_1708:int;
      
      private var _index:int;
      
      private var var_1706:String;
      
      private var _type:int;
      
      private var var_1607:String;
      
      private var var_788:GuestRoomData;
      
      private var var_1705:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1710 = param1.readString();
         var_1705 = param1.readString();
         var_1709 = param1.readInteger() == 1;
         var_1706 = param1.readString();
         var_866 = param1.readString();
         var_1708 = param1.readInteger();
         var_1707 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_988)
         {
            var_1607 = param1.readString();
         }
         else if(_type == const_550)
         {
            var_787 = new PublicRoomData(param1);
         }
         else if(_type == const_733)
         {
            var_788 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1708;
      }
      
      public function get popupCaption() : String
      {
         return var_1710;
      }
      
      public function get userCount() : int
      {
         return var_1707;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1709;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_988)
         {
            return 0;
         }
         if(this.type == const_733)
         {
            return this.var_788.maxUserCount;
         }
         if(this.type == const_550)
         {
            return this.var_787.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1705;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_788 != null)
         {
            this.var_788.dispose();
            this.var_788 = null;
         }
         if(this.var_787 != null)
         {
            this.var_787.dispose();
            this.var_787 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_788;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1706;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_787;
      }
      
      public function get picRef() : String
      {
         return var_866;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1607;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
