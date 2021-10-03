package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1412:int = 10;
       
      
      private var var_1440:NavigatorSettingsMessageParser;
      
      private var var_1170:int;
      
      private var var_1801:int;
      
      private var var_1797:Boolean;
      
      private var var_978:Array;
      
      private var var_796:Dictionary;
      
      private var var_977:Array;
      
      private var var_2291:int;
      
      private var var_1800:int;
      
      private var var_1799:int;
      
      private var var_1798:int;
      
      private var var_559:PublicRoomShortData;
      
      private var var_393:RoomEventData;
      
      private var var_124:MsgWithRequestId;
      
      private var var_1611:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1802:Boolean;
      
      private var var_187:GuestRoomData;
      
      private var var_664:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_978 = new Array();
         var_977 = new Array();
         var_796 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1801;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1802;
      }
      
      public function startLoading() : void
      {
         this.var_664 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1802 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_393 != null)
         {
            var_393.dispose();
         }
         var_393 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_124 != null && var_124 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_124 != null && var_124 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_124 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_187;
      }
      
      public function get allCategories() : Array
      {
         return var_978;
      }
      
      public function onRoomExit() : void
      {
         if(var_393 != null)
         {
            var_393.dispose();
            var_393 = null;
         }
         if(var_559 != null)
         {
            var_559.dispose();
            var_559 = null;
         }
         if(var_187 != null)
         {
            var_187.dispose();
            var_187 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_124 = param1;
         var_664 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1440;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_124 = param1;
         var_664 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_559 = null;
         var_187 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_559 = param1.publicSpace;
            var_393 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2291 = param1.limit;
         this.var_1170 = param1.favouriteRoomIds.length;
         this.var_796 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_796[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_124 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_559;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1797;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_124 = param1;
         var_664 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1799 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_187 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_664;
      }
      
      public function get visibleCategories() : Array
      {
         return var_977;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_978 = param1;
         var_977 = new Array();
         for each(_loc2_ in var_978)
         {
            if(_loc2_.visible)
            {
               var_977.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1800;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1798;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1440 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_124 == null)
         {
            return;
         }
         var_124.dispose();
         var_124 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_393;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_796[param1] = !!param2 ? "yes" : null;
         var_1170 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_124 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1799;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_124 != null && var_124 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1797 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1800 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1611 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_187 != null)
         {
            var_187.dispose();
         }
         var_187 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_187 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1440.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1170 >= var_2291;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1798 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1611;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_187 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1801 = param1;
      }
   }
}
