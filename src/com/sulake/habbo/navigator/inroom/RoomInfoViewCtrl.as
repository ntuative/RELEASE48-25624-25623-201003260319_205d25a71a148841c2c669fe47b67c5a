package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_727:IWindowContainer;
      
      private var var_1049:ITextWindow;
      
      private var var_204:RoomSettingsCtrl;
      
      private var var_1294:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1299:ITextWindow;
      
      private var var_360:IWindowContainer;
      
      private var var_2094:IWindowContainer;
      
      private var var_2096:ITextWindow;
      
      private var var_897:IWindowContainer;
      
      private var var_1549:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_694:ITextWindow;
      
      private var var_1545:IWindowContainer;
      
      private var var_1298:IWindowContainer;
      
      private var var_895:ITextWindow;
      
      private var var_1050:ITextFieldWindow;
      
      private var var_312:IWindowContainer;
      
      private var var_896:ITextWindow;
      
      private var var_1547:IButtonWindow;
      
      private var var_1048:ITextWindow;
      
      private var var_2322:int;
      
      private var var_1297:IContainerButtonWindow;
      
      private var var_898:IWindowContainer;
      
      private var var_1295:ITextWindow;
      
      private var var_1296:IContainerButtonWindow;
      
      private var var_1546:ITextWindow;
      
      private var var_1548:IButtonWindow;
      
      private var var_843:TagRenderer;
      
      private var var_2095:ITextWindow;
      
      private var var_361:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_728:ITextWindow;
      
      private var var_276:RoomThumbnailCtrl;
      
      private var var_1293:IContainerButtonWindow;
      
      private var var_2097:IWindowContainer;
      
      private var var_277:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_361 = new RoomEventViewCtrl(_navigator);
         var_204 = new RoomSettingsCtrl(_navigator,this,true);
         var_276 = new RoomThumbnailCtrl(_navigator);
         var_843 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_204);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_204.active = true;
         this.var_361.active = false;
         this.var_276.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1549.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1548.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1545.visible = Util.hasVisibleChildren(var_1545);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_694.text = param1.roomName;
         var_694.height = NaN;
         _ownerName.text = param1.ownerName;
         var_895.text = param1.description;
         var_843.refreshTags(var_360,param1.tags);
         var_895.visible = false;
         if(param1.description != "")
         {
            var_895.height = NaN;
            var_895.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_360,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_360,"thumb_down",_loc3_,onThumbDown,0);
         var_2096.visible = _loc3_;
         var_896.visible = !_loc3_;
         var_1546.visible = !_loc3_;
         var_1546.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_360,"home",param2,null,0);
         _navigator.refreshButton(var_360,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_360,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_694.y,0);
         var_360.visible = true;
         var_360.height = Util.getLowestPoint(var_360);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_362,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1547.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1294.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1293.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1297.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1296.visible = _navigator.data.canEditRoomSettings && param1;
         var_1298.visible = Util.hasVisibleChildren(var_1298);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_361.active = false;
         this.var_204.active = false;
         this.var_276.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_46,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_361.active = false;
         this.var_204.active = false;
         this.var_276.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_46,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_362,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_312);
         var_312.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_204.refresh(var_312);
         this.var_276.refresh(var_312);
         Util.moveChildrenToColumn(var_312,["room_details","room_buttons"],0,2);
         var_312.height = Util.getLowestPoint(var_312);
         var_312.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1050.setSelection(0,var_1050.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_277);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_361.refresh(var_277);
         if(Util.hasVisibleChildren(var_277) && !this.var_276.active)
         {
            Util.moveChildrenToColumn(var_277,["event_details","event_buttons"],0,2);
            var_277.height = Util.getLowestPoint(var_277);
            var_277.visible = true;
         }
         else
         {
            var_277.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_361.active = true;
         this.var_204.active = false;
         this.var_276.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1049.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1049.height = NaN;
         var_1299.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1299.height = NaN;
         Util.moveChildrenToColumn(var_727,["public_space_name","public_space_desc"],var_1049.y,0);
         var_727.visible = true;
         var_727.height = Math.max(86,Util.getLowestPoint(var_727));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_898.visible = true;
            var_1050.text = this.getEmbedData();
         }
         else
         {
            var_898.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_204.load(param1);
         this.var_204.active = true;
         this.var_361.active = false;
         this.var_276.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_204.active = false;
         this.var_361.active = false;
         this.var_276.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_69,false);
         _window.setParamFlag(HabboWindowParam.const_1188,true);
         _window.visible = false;
         var_312 = IWindowContainer(find("room_info"));
         var_360 = IWindowContainer(find("room_details"));
         var_727 = IWindowContainer(find("public_space_details"));
         var_2097 = IWindowContainer(find("owner_name_cont"));
         var_2094 = IWindowContainer(find("rating_cont"));
         var_1298 = IWindowContainer(find("room_buttons"));
         var_694 = ITextWindow(find("room_name"));
         var_1049 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_895 = ITextWindow(find("room_desc"));
         var_1299 = ITextWindow(find("public_space_desc"));
         var_1048 = ITextWindow(find("owner_caption"));
         var_896 = ITextWindow(find("rating_caption"));
         var_2096 = ITextWindow(find("rate_caption"));
         var_1546 = ITextWindow(find("rating_txt"));
         var_277 = IWindowContainer(find("event_info"));
         var_897 = IWindowContainer(find("event_details"));
         var_1545 = IWindowContainer(find("event_buttons"));
         var_2095 = ITextWindow(find("event_name"));
         var_728 = ITextWindow(find("event_desc"));
         var_1294 = IContainerButtonWindow(find("add_favourite_button"));
         var_1293 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1297 = IContainerButtonWindow(find("make_home_button"));
         var_1296 = IContainerButtonWindow(find("unmake_home_button"));
         var_1547 = IButtonWindow(find("room_settings_button"));
         var_1549 = IButtonWindow(find("create_event_button"));
         var_1548 = IButtonWindow(find("edit_event_button"));
         var_898 = IWindowContainer(find("embed_info"));
         var_1295 = ITextWindow(find("embed_info_txt"));
         var_1050 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1294,onAddFavouriteClick);
         Util.setProcDirectly(var_1293,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1547,onRoomSettingsClick);
         Util.setProcDirectly(var_1297,onMakeHomeClick);
         Util.setProcDirectly(var_1296,onUnmakeHomeClick);
         Util.setProcDirectly(var_1549,onEventSettingsClick);
         Util.setProcDirectly(var_1548,onEventSettingsClick);
         Util.setProcDirectly(var_1050,onEmbedSrcClick);
         _navigator.refreshButton(var_1294,"favourite",true,null,0);
         _navigator.refreshButton(var_1293,"favourite",true,null,0);
         _navigator.refreshButton(var_1297,"home",true,null,0);
         _navigator.refreshButton(var_1296,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_312,onHover);
         Util.setProcDirectly(var_277,onHover);
         var_1048.width = var_1048.textWidth;
         Util.moveChildrenToRow(var_2097,["owner_caption","owner_name"],var_1048.x,var_1048.y,3);
         var_896.width = var_896.textWidth;
         Util.moveChildrenToRow(var_2094,["rating_caption","rating_txt"],var_896.x,var_896.y,3);
         var_1295.height = NaN;
         Util.moveChildrenToColumn(var_898,["embed_info_txt","embed_src_txt"],var_1295.y,2);
         var_898.height = Util.getLowestPoint(var_898) + 5;
         var_2322 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_2095.text = param1.eventName;
         var_728.text = param1.eventDescription;
         var_843.refreshTags(var_897,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_728.visible = false;
         if(param1.eventDescription != "")
         {
            var_728.height = NaN;
            var_728.y = Util.getLowestPoint(var_897) + 2;
            var_728.visible = true;
         }
         var_897.visible = true;
         var_897.height = Util.getLowestPoint(var_897);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_1023,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
