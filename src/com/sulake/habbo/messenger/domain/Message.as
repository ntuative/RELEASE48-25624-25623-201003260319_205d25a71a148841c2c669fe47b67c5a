package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_613:int = 2;
      
      public static const const_883:int = 6;
      
      public static const const_666:int = 1;
      
      public static const const_679:int = 3;
      
      public static const const_990:int = 4;
      
      public static const const_632:int = 5;
       
      
      private var var_1961:String;
      
      private var var_989:int;
      
      private var var_1960:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_989 = param2;
         var_1960 = param3;
         var_1961 = param4;
      }
      
      public function get time() : String
      {
         return var_1961;
      }
      
      public function get senderId() : int
      {
         return var_989;
      }
      
      public function get messageText() : String
      {
         return var_1960;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
