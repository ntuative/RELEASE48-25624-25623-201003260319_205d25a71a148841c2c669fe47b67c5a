package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_434:uint;
      
      private var var_1061:IUnknown;
      
      private var var_1311:String;
      
      private var var_1062:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1062 = param1;
         var_1311 = getQualifiedClassName(var_1062);
         var_1061 = param2;
         var_434 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1062;
      }
      
      public function get disposed() : Boolean
      {
         return var_1061 == null;
      }
      
      public function get references() : uint
      {
         return var_434;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_434) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1061;
      }
      
      public function get iis() : String
      {
         return var_1311;
      }
      
      public function reserve() : uint
      {
         return ++var_434;
      }
      
      public function dispose() : void
      {
         var_1062 = null;
         var_1311 = null;
         var_1061 = null;
         var_434 = 0;
      }
   }
}
