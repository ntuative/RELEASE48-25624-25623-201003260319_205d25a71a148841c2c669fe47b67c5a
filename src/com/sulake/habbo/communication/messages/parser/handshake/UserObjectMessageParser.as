package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_402:String;
      
      private var var_2306:String;
      
      private var var_2302:int;
      
      private var var_2305:int;
      
      private var var_1360:String;
      
      private var var_1212:String;
      
      private var _name:String;
      
      private var var_531:int;
      
      private var var_921:int;
      
      private var var_2304:int;
      
      private var var_1949:int;
      
      private var var_2303:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2305;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1212;
      }
      
      public function get customData() : String
      {
         return this.var_2306;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_531;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2302;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2303;
      }
      
      public function get figure() : String
      {
         return this.var_402;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1949;
      }
      
      public function get sex() : String
      {
         return this.var_1360;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_402 = param1.readString();
         this.var_1360 = param1.readString();
         this.var_2306 = param1.readString();
         this.var_1212 = param1.readString();
         this.var_2304 = param1.readInteger();
         this.var_2303 = param1.readString();
         this.var_2302 = param1.readInteger();
         this.var_2305 = param1.readInteger();
         this.var_1949 = param1.readInteger();
         this.var_921 = param1.readInteger();
         this.var_531 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2304;
      }
      
      public function get respectLeft() : int
      {
         return this.var_921;
      }
   }
}
