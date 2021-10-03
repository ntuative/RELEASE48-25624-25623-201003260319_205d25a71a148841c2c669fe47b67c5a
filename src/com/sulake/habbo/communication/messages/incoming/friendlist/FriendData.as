package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_402:String;
      
      private var var_1210:String;
      
      private var var_1211:String;
      
      private var var_1177:int;
      
      private var var_675:int;
      
      private var var_1212:String;
      
      private var _name:String;
      
      private var var_1209:Boolean;
      
      private var var_672:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_675 = param1.readInteger();
         this.var_672 = param1.readBoolean();
         this.var_1209 = param1.readBoolean();
         this.var_402 = param1.readString();
         this.var_1177 = param1.readInteger();
         this.var_1211 = param1.readString();
         this.var_1210 = param1.readString();
         this.var_1212 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_675;
      }
      
      public function get realName() : String
      {
         return var_1212;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1211;
      }
      
      public function get categoryId() : int
      {
         return var_1177;
      }
      
      public function get online() : Boolean
      {
         return var_672;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1209;
      }
      
      public function get lastAccess() : String
      {
         return var_1210;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_402;
      }
   }
}
