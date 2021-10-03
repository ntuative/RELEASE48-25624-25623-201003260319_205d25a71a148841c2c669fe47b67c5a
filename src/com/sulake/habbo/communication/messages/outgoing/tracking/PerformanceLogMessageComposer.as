package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1028:int = 0;
      
      private var var_1319:int = 0;
      
      private var var_2021:String = "";
      
      private var var_1029:int = 0;
      
      private var var_2173:String = "";
      
      private var var_2176:int = 0;
      
      private var var_1515:String = "";
      
      private var var_2174:int = 0;
      
      private var var_2175:int = 0;
      
      private var var_2024:String = "";
      
      private var var_2177:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2174 = param1;
         var_2024 = param2;
         var_1515 = param3;
         var_2021 = param4;
         var_2173 = param5;
         if(param6)
         {
            var_1319 = 1;
         }
         else
         {
            var_1319 = 0;
         }
         var_2176 = param7;
         var_2175 = param8;
         var_1029 = param9;
         var_2177 = param10;
         var_1028 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2174,var_2024,var_1515,var_2021,var_2173,var_1319,var_2176,var_2175,var_1029,var_2177,var_1028];
      }
      
      public function dispose() : void
      {
      }
   }
}
