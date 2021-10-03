package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_260:String = "WE_CHILD_RESIZED";
      
      public static const const_1184:String = "WE_CLOSE";
      
      public static const const_1330:String = "WE_DESTROY";
      
      public static const const_133:String = "WE_CHANGE";
      
      public static const const_1257:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1502:String = "WE_PARENT_RESIZE";
      
      public static const const_90:String = "WE_UPDATE";
      
      public static const const_1358:String = "WE_MAXIMIZE";
      
      public static const const_431:String = "WE_DESTROYED";
      
      public static const const_818:String = "WE_UNSELECT";
      
      public static const const_1160:String = "WE_MAXIMIZED";
      
      public static const const_1575:String = "WE_UNLOCKED";
      
      public static const const_396:String = "WE_CHILD_REMOVED";
      
      public static const const_158:String = "WE_OK";
      
      public static const const_44:String = "WE_RESIZED";
      
      public static const const_1326:String = "WE_ACTIVATE";
      
      public static const const_276:String = "WE_ENABLED";
      
      public static const const_358:String = "WE_CHILD_RELOCATED";
      
      public static const const_1248:String = "WE_CREATE";
      
      public static const const_647:String = "WE_SELECT";
      
      public static const const_160:String = "";
      
      public static const const_1550:String = "WE_LOCKED";
      
      public static const const_1494:String = "WE_PARENT_RELOCATE";
      
      public static const const_1589:String = "WE_CHILD_REMOVE";
      
      public static const const_1457:String = "WE_CHILD_RELOCATE";
      
      public static const const_1562:String = "WE_LOCK";
      
      public static const const_216:String = "WE_FOCUSED";
      
      public static const const_561:String = "WE_UNSELECTED";
      
      public static const const_872:String = "WE_DEACTIVATED";
      
      public static const const_1397:String = "WE_MINIMIZED";
      
      public static const const_1556:String = "WE_ARRANGED";
      
      public static const const_1615:String = "WE_UNLOCK";
      
      public static const const_1587:String = "WE_ATTACH";
      
      public static const const_1274:String = "WE_OPEN";
      
      public static const const_1243:String = "WE_RESTORE";
      
      public static const const_1584:String = "WE_PARENT_RELOCATED";
      
      public static const const_1355:String = "WE_RELOCATE";
      
      public static const const_1582:String = "WE_CHILD_RESIZE";
      
      public static const const_1557:String = "WE_ARRANGE";
      
      public static const const_1238:String = "WE_OPENED";
      
      public static const const_1169:String = "WE_CLOSED";
      
      public static const const_1544:String = "WE_DETACHED";
      
      public static const const_1538:String = "WE_UPDATED";
      
      public static const const_1165:String = "WE_UNFOCUSED";
      
      public static const const_462:String = "WE_RELOCATED";
      
      public static const const_1245:String = "WE_DEACTIVATE";
      
      public static const const_198:String = "WE_DISABLED";
      
      public static const const_585:String = "WE_CANCEL";
      
      public static const const_527:String = "WE_ENABLE";
      
      public static const const_1319:String = "WE_ACTIVATED";
      
      public static const const_1167:String = "WE_FOCUS";
      
      public static const const_1617:String = "WE_DETACH";
      
      public static const const_1155:String = "WE_RESTORED";
      
      public static const const_1293:String = "WE_UNFOCUS";
      
      public static const const_55:String = "WE_SELECTED";
      
      public static const const_1375:String = "WE_PARENT_RESIZED";
      
      public static const const_1180:String = "WE_CREATED";
      
      public static const const_1534:String = "WE_ATTACHED";
      
      public static const const_1158:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1602:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1374:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1602 = param3;
         var_1374 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1374;
      }
      
      public function get related() : IWindow
      {
         return var_1602;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1374 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
