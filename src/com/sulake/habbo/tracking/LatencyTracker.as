package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.tracking.LatencyPingResponseMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingReportMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingRequestMessageComposer;
   import com.sulake.habbo.communication.messages.parser.tracking.LatencyPingResponseMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LatencyTracker
   {
       
      
      private var var_146:Array;
      
      private var var_31:Boolean = false;
      
      private var var_1431:int = 0;
      
      private var var_1429:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_465:Map;
      
      private var var_1747:int = 0;
      
      private var var_1428:int = 0;
      
      private var var_145:IHabboConfigurationManager;
      
      private var var_1152:int = 0;
      
      private var _connection:IConnection;
      
      private var var_1430:int = 0;
      
      public function LatencyTracker()
      {
         super();
      }
      
      public function update(param1:uint) : void
      {
         if(!var_31)
         {
            return;
         }
         if(getTimer() - var_1431 > var_1429)
         {
            testLatency();
         }
      }
      
      private function testLatency() : void
      {
         var_1431 = getTimer();
         var_465.add(var_1152,var_1431);
         _connection.send(new LatencyPingRequestMessageComposer(var_1152));
         ++var_1152;
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function init() : void
      {
         if(var_145 == null || _communication == null || _connection == null)
         {
            return;
         }
         var_1429 = int(var_145.getKey("latencytest.interval"));
         var_1430 = int(var_145.getKey("latencytest.report.index"));
         var_1747 = int(var_145.getKey("latencytest.report.delta"));
         _communication.addHabboConnectionMessageEvent(new LatencyPingResponseMessageEvent(onPingResponse));
         if(var_1429 < 1)
         {
            return;
         }
         var_465 = new Map();
         var_146 = new Array();
         var_31 = true;
      }
      
      private function onPingResponse(param1:IMessageEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         if(var_465 == null || var_146 == null)
         {
            return;
         }
         var _loc2_:LatencyPingResponseMessageParser = (param1 as LatencyPingResponseMessageEvent).getParser();
         var _loc3_:int = var_465.getValue(_loc2_.requestId);
         var_465.remove(_loc2_.requestId);
         var _loc4_:int = getTimer() - _loc3_;
         var_146.push(_loc4_);
         if(var_146.length == var_1430 && var_1430 > 0)
         {
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            _loc8_ = 0;
            while(_loc8_ < var_146.length)
            {
               _loc5_ += var_146[_loc8_];
               _loc8_++;
            }
            _loc9_ = _loc5_ / 0;
            _loc8_ = 0;
            while(_loc8_ < var_146.length)
            {
               if(var_146[_loc8_] < _loc9_ * 2)
               {
                  _loc6_ += var_146[_loc8_];
                  _loc7_++;
               }
               _loc8_++;
            }
            if(_loc7_ == 0)
            {
               var_146 = [];
               return;
            }
            _loc10_ = _loc6_ / _loc7_;
            if(Math.abs(_loc9_ - var_1428) > var_1747 || var_1428 == 0)
            {
               var_1428 = _loc9_;
               _loc11_ = new LatencyPingReportMessageComposer(_loc9_,_loc10_,var_146.length);
               _connection.send(_loc11_);
            }
            var_146 = [];
         }
      }
      
      public function dispose() : void
      {
         var_31 = false;
         var_145 = null;
         _communication = null;
         _connection = null;
         if(var_465 != null)
         {
            var_465.dispose();
            var_465 = null;
         }
         var_146 = null;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_145 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
