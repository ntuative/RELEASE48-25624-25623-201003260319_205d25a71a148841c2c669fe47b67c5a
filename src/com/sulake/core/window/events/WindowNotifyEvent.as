package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1255:String = "WN_CREATED";
      
      public static const const_823:String = "WN_DISABLE";
      
      public static const const_974:String = "WN_DEACTIVATED";
      
      public static const const_944:String = "WN_OPENED";
      
      public static const const_905:String = "WN_CLOSED";
      
      public static const const_860:String = "WN_DESTROY";
      
      public static const const_1507:String = "WN_ARRANGED";
      
      public static const const_352:String = "WN_PARENT_RESIZED";
      
      public static const const_901:String = "WN_ENABLE";
      
      public static const const_927:String = "WN_RELOCATE";
      
      public static const const_880:String = "WN_FOCUS";
      
      public static const const_861:String = "WN_PARENT_RELOCATED";
      
      public static const const_481:String = "WN_PARAM_UPDATED";
      
      public static const const_604:String = "WN_PARENT_ACTIVATED";
      
      public static const const_165:String = "WN_RESIZED";
      
      public static const const_993:String = "WN_CLOSE";
      
      public static const const_827:String = "WN_PARENT_REMOVED";
      
      public static const const_252:String = "WN_CHILD_RELOCATED";
      
      public static const const_536:String = "WN_ENABLED";
      
      public static const const_261:String = "WN_CHILD_RESIZED";
      
      public static const const_1019:String = "WN_MINIMIZED";
      
      public static const const_709:String = "WN_DISABLED";
      
      public static const const_196:String = "WN_CHILD_ACTIVATED";
      
      public static const const_437:String = "WN_STATE_UPDATED";
      
      public static const const_558:String = "WN_UNSELECTED";
      
      public static const const_354:String = "WN_STYLE_UPDATED";
      
      public static const const_1572:String = "WN_UPDATE";
      
      public static const const_413:String = "WN_PARENT_ADDED";
      
      public static const const_678:String = "WN_RESIZE";
      
      public static const const_627:String = "WN_CHILD_REMOVED";
      
      public static const const_1533:String = "";
      
      public static const const_1006:String = "WN_RESTORED";
      
      public static const const_297:String = "WN_SELECTED";
      
      public static const const_807:String = "WN_MINIMIZE";
      
      public static const const_1008:String = "WN_FOCUSED";
      
      public static const const_1269:String = "WN_LOCK";
      
      public static const const_321:String = "WN_CHILD_ADDED";
      
      public static const const_902:String = "WN_UNFOCUSED";
      
      public static const const_375:String = "WN_RELOCATED";
      
      public static const const_975:String = "WN_DEACTIVATE";
      
      public static const const_1310:String = "WN_CRETAE";
      
      public static const const_845:String = "WN_RESTORE";
      
      public static const const_336:String = "WN_ACTVATED";
      
      public static const const_1292:String = "WN_LOCKED";
      
      public static const const_391:String = "WN_SELECT";
      
      public static const const_803:String = "WN_MAXIMIZE";
      
      public static const const_980:String = "WN_OPEN";
      
      public static const const_564:String = "WN_UNSELECT";
      
      public static const const_1581:String = "WN_ARRANGE";
      
      public static const const_1279:String = "WN_UNLOCKED";
      
      public static const const_1487:String = "WN_UPDATED";
      
      public static const const_1021:String = "WN_ACTIVATE";
      
      public static const const_1361:String = "WN_UNLOCK";
      
      public static const const_869:String = "WN_MAXIMIZED";
      
      public static const const_1001:String = "WN_DESTROYED";
      
      public static const const_920:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1602,cancelable);
      }
   }
}
