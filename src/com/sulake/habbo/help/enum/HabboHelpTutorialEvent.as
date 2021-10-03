package com.sulake.habbo.help.enum
{
   import flash.events.Event;
   
   public class HabboHelpTutorialEvent extends Event
   {
      
      public static const const_554:String = "HHTPNUFWE_DONE_GUIDEBOT";
      
      public static const const_650:String = "HHTE_DONE_AVATAR_EDITOR_CLOSING";
      
      public static const const_101:String = "HHTPNUFWE_AVATAR_TUTORIAL_START";
      
      public static const const_403:String = "HHTPNUFWE_LIGHT_CLOTHES_ICON";
      
      public static const const_519:String = "HHTE_DONE_AVATAR_EDITOR_OPENING";
       
      
      public function HabboHelpTutorialEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}
