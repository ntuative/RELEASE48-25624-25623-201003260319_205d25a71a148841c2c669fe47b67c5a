package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1906:Boolean;
      
      private var var_1478:Array;
      
      private var var_1908:Boolean;
      
      private var var_1913:Boolean;
      
      private var var_1912:Boolean;
      
      private var var_147:Array;
      
      private var var_1910:Boolean;
      
      private var var_1911:Boolean;
      
      private var var_1479:Array;
      
      private var var_1907:Boolean;
      
      private var var_1909:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1909;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1906;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1908;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1910;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1911;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1478;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_147 = [];
         var_1478 = [];
         _roomMessageTemplates = [];
         var_1479 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_147.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1478.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1479.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1910 = param1.readBoolean();
         var_1912 = param1.readBoolean();
         var_1908 = param1.readBoolean();
         var_1913 = param1.readBoolean();
         var_1909 = param1.readBoolean();
         var_1911 = param1.readBoolean();
         var_1906 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1907 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1913;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1479;
      }
      
      public function get issues() : Array
      {
         return var_147;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1907;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1912;
      }
   }
}
