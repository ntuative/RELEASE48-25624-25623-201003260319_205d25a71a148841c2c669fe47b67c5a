package com.sulake.habbo.window.utils
{
   class AlertDialogCaption implements ICaption
   {
       
      
      private var var_328:Boolean;
      
      private var var_186:String;
      
      private var var_1334:String;
      
      function AlertDialogCaption(param1:String, param2:String, param3:Boolean)
      {
         super();
         var_186 = param1;
         var_1334 = param2;
         var_328 = param3;
      }
      
      public function get toolTip() : String
      {
         return var_1334;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_328 = param1;
      }
      
      public function get text() : String
      {
         return var_186;
      }
      
      public function get visible() : Boolean
      {
         return var_328;
      }
      
      public function set toolTip(param1:String) : void
      {
         var_1334 = param1;
      }
      
      public function set text(param1:String) : void
      {
         var_186 = param1;
      }
   }
}
