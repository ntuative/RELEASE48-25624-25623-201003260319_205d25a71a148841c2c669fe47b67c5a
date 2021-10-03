package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var var_70:Vector3d = null;
      
      private var _id:int = 0;
      
      private var var_227:Vector3d = null;
      
      private var var_1915:int = 0;
      
      private var var_2179:String = null;
      
      private var _category:int = 0;
      
      private var var_2178:String = "";
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         _id = param1;
         _category = param2;
         var_2178 = param3;
         var_70 = new Vector3d();
         var_70.assign(param4);
         var_227 = new Vector3d();
         var_227.assign(param5);
         var_1915 = param6;
         var_2179 = param7;
      }
      
      public function get loc() : Vector3d
      {
         return var_70;
      }
      
      public function get typeId() : int
      {
         return var_1915;
      }
      
      public function get dir() : Vector3d
      {
         return var_227;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get instanceData() : String
      {
         return var_2179;
      }
      
      public function get operation() : String
      {
         return var_2178;
      }
      
      public function dispose() : void
      {
         var_70 = null;
         var_227 = null;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
