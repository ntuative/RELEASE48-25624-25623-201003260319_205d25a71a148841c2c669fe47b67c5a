package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2281:Boolean;
      
      private var var_2280:int;
      
      private var var_2282:Boolean;
      
      private var var_1449:String;
      
      private var var_1212:String;
      
      private var var_1799:int;
      
      private var var_1827:String;
      
      private var var_2283:String;
      
      private var var_1828:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1799 = param1.readInteger();
         this.var_1449 = param1.readString();
         this.var_1827 = param1.readString();
         this.var_2281 = param1.readBoolean();
         this.var_2282 = param1.readBoolean();
         param1.readString();
         this.var_2280 = param1.readInteger();
         this.var_1828 = param1.readString();
         this.var_2283 = param1.readString();
         this.var_1212 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1212;
      }
      
      public function get avatarName() : String
      {
         return this.var_1449;
      }
      
      public function get avatarId() : int
      {
         return this.var_1799;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2281;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2283;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1828;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2282;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1827;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2280;
      }
   }
}
