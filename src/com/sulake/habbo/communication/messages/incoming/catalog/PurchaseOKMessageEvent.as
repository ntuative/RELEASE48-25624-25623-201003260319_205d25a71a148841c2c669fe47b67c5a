package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.PurchaseOKMessageParser;
   
   public class PurchaseOKMessageEvent extends MessageEvent implements IMessageEvent
   {
       
      
      public function PurchaseOKMessageEvent(param1:Function)
      {
         super(param1,PurchaseOKMessageParser);
      }
      
      public function getParser() : PurchaseOKMessageParser
      {
         return this.var_6 as PurchaseOKMessageParser;
      }
   }
}
